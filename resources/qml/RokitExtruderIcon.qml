// Copyright (c) 2018 Ultimaker B.V.
// Cura is released under the terms of the LGPLv3 or higher.

import QtQuick 2.7
import QtQuick.Controls 1.1
import UM 1.2 as UM

Item
{
    id: extruderIconItem

    implicitWidth: UM.Theme.getSize("extruder_icon").width
    implicitHeight: UM.Theme.getSize("extruder_icon").height

    property bool checked: true
    property color materialColor
    property alias textColor: extruderNumberText.color
    property bool extruderEnabled: true

    property string extruderName: 'extruder'

    Rectangle
    {
        id: extruderNumberCircle

        width: height
        height: Math.round(parent.height / 2)
        radius: Math.round(width / 2)
        color: UM.Theme.getColor("toolbar_background")

        anchors
        {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            // The circle needs to be slightly off center (so it sits in the middle of the square bit of the icon)
            topMargin: (parent.height - height) / 2 - 0.1 * parent.height
        }

        Label
        {
            id: extruderNumberText
            anchors.centerIn: parent
            text: extruderName //index + 100
            font: UM.Theme.getFont("medium")
            color: UM.Theme.getColor("text")
            width: contentWidth
            height: contentHeight
            visible: extruderEnabled
            renderType: Text.NativeRendering
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}