// Copyright (c) 2018 Ultimaker B.V.
// Cura is released under the terms of the LGPLv3 or higher.

import QtQuick 2.7
import QtQuick.Controls 2.3
// 아래 2개 추가
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4 as Controls1

import UM 1.3 as UM
import Cura 1.0 as Cura

import "Custom"

//
// 1. slice 버튼 기능 추가
// 2. ouput priority 옵션 추가
// 3. build plate 기능 추가
//

Item
{
    id: content

    UM.I18nCatalog
    {
        id: catalog
        name: "cura"
    }

    property real progress: UM.Backend.progress
    property int backendState: UM.Backend.state
    // As the collection of settings to send to the engine might take some time, we have an extra value to indicate
    // That the user pressed the button but it's still waiting for the backend to acknowledge that it got it.
    property bool waitingForSliceToStart: false
    onBackendStateChanged: waitingForSliceToStart = false

    property int absoluteMinimumHeight: 200 * screenScaleFactor

    width: UM.Theme.getSize("print_setup_widget").width - 2 * UM.Theme.getSize("default_margin").width
    height: contents.height + prepareButtons.height

    enum Mode
    {
        Custom = 1
    }

    // Catch all mouse events
    MouseArea
    {
        anchors.fill: parent
        hoverEnabled: true
    }

    // Set the current mode index to the value that is stored in the preferences or Recommended mode otherwise.
    property int currentModeIndex:
    {
        var index = Math.round(UM.Preferences.getValue("cura/active_mode"))

        if (index != null && !isNaN(index))
        {
            return index
        }
        return RokitGenerationContents.Mode.Custom
    }
    onCurrentModeIndexChanged: UM.Preferences.setValue("cura/active_mode", currentModeIndex)

    Item
    {
        id: contents
        // Use the visible property instead of checking the currentModeIndex. That creates a binding that
        // evaluates the new height every time the visible property changes.
        height: rokitGenerationSetup.height

        anchors
        {
            top: parent.top
            left: parent.left
            right: parent.right
        }

        // RokitBuildPlateSetting
        RokitGenerationSetup // 핵심 컨텐츠 (이전: customPrintSetup)
        {
            id: rokitGenerationSetup
            anchors
            {
                left: parent.left
                right: parent.right
                top: parent.top
            }
            height: UM.Preferences.getValue("view/generation_settings_list_height") - UM.Theme.getSize("default_margin").height
            Connections
            {
                target: UM.Preferences
                onPreferenceChanged:
                {
                    if (preference !== "view/generation_settings_list_height" && preference !== "general/window_height" && preference !== "general/window_state")
                    {
                        return;
                    }

                    rokitGenerationSetup.height =
                        Math.min
                        (
                            UM.Preferences.getValue("view/generation_settings_list_height"),
                            Math.max
                            (
                                absoluteMinimumHeight,
                                base.height - (rokitGenerationSetup.mapToItem(null, 0, 0).y + prepareButtons.height + UM.Theme.getSize("default_margin").height)
                            )
                        );

                    //updateDragPosition();
                }
            }
            visible: currentModeIndex == RokitGenerationContents.Mode.Custom
        }
    }

    Rectangle
    {
        id: buttonsSeparator

        // The buttonsSeparator is inside the contents. This is to avoid a double line in the bottom
        anchors.bottom: contents.bottom
        width: parent.width
        height: UM.Theme.getSize("default_lining").height
        color: UM.Theme.getColor("lining")
    }

    function sliceOrStopSlicing()
    {
        if (widget.backendState == UM.Backend.NotStarted)
        {
            widget.waitingForSliceToStart = true
            CuraApplication.backend.forceSlice()
        }
        else
        {
            widget.waitingForSliceToStart = false
            CuraApplication.backend.stopSlicing()
        }
    }

    Item
    {
        id: prepareButtons
        property real padding: UM.Theme.getSize("default_margin").width
        height: generationButton.height + 2 * padding + (draggableArea.visible ? draggableArea.height : 0)

        anchors
        {
            bottom: parent.bottom
            left: parent.left
            right: parent.right
        }

        // slice 버튼을 심어 넣어야 함.
        Cura.SecondaryButton
        {
            id: generationButton
            anchors{
                top: parent.top
                right: parent.right //--
                margins: parent.padding
            }
            leftPadding: UM.Theme.getSize("default_margin").width
            rightPadding: UM.Theme.getSize("default_margin").width

            enabled: widget.backendState != UM.Backend.Error && !widget.waitingForSliceToStart
            text: catalog.i18nc("@button", "Generation")
            //visible: widget.backendState == UM.Backend.NotStarted || widget.backendState == UM.Backend.Error
            visible: true
            onClicked: sliceOrStopSlicing() // SLICE 버튼 
        }

        Connections
        {
            target: UM.Preferences
            onPreferenceChanged:
            {
                if (preference !== "general/auto_slice")
                {
                    return;
                }

                var autoSlice = UM.Preferences.getValue("general/auto_slice")
                if(prepareButtons.autoSlice != autoSlice)
                {
                    prepareButtons.autoSlice = autoSlice
                    if(autoSlice)
                    {
                        CuraApplication.backend.forceSlice()
                    }
                }
            }
        }

        //Invisible area at the bottom with which you can resize the panel.
        MouseArea
        {
            id: draggableArea
            anchors
            {
                left: parent.left
                right: parent.right
                bottom: parent.bottom
            }
            height: childrenRect.height
            cursorShape: Qt.SplitVCursor
            visible: currentModeIndex == RokitGenerationContents.Mode.Custom
            drag
            {
                target: parent
                axis: Drag.YAxis
            }
            onMouseYChanged:
            {
                if(drag.active)
                {
                    // position of mouse relative to dropdown  align vertical centre of mouse area to cursor
                    //      v------------------------------v   v------------v
                    var h = mouseY + prepareButtons.y + content.y - height / 2 | 0;
                    if(h < absoluteMinimumHeight) //Enforce a minimum size.
                    {
                        h = absoluteMinimumHeight;
                    }

                    //Absolute mouse Y position in the window, to prevent it from going outside the window.
                    var mouse_absolute_y = mapToGlobal(mouseX, mouseY).y - UM.Preferences.getValue("general/window_top");
                    if(mouse_absolute_y > base.height)
                    {
                        h -= mouse_absolute_y - base.height;
                    }
                    // Enforce a minimum size (again).
                    // This is a bit of a hackish way to do it, but we've seen some ocasional reports that the size
                    // could get below the the minimum height.
                    if(h < absoluteMinimumHeight)
                    {
                        h = absoluteMinimumHeight;
                    }
                    UM.Preferences.setValue("view/generation_settings_list_height", h);
                }
            }

            Rectangle
            {
                width: parent.width
                height: UM.Theme.getSize("narrow_margin").height
                color: UM.Theme.getColor("secondary")

                Rectangle
                {
                    anchors.bottom: parent.top
                    width: parent.width
                    height: UM.Theme.getSize("default_lining").height
                    color: UM.Theme.getColor("lining")
                }

                UM.RecolorImage
                {
                    width: UM.Theme.getSize("drag_icon").width
                    height: UM.Theme.getSize("drag_icon").height
                    anchors.centerIn: parent

                    source: UM.Theme.getIcon("resize")
                    color: UM.Theme.getColor("small_button_text")
                }
            }
        }
    }
}