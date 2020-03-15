// Copyright (c) 2018 Ultimaker B.V.
// Cura is released under the terms of the LGPLv3 or higher.

import QtQuick 2.7
import QtQuick.Controls 2.0

import UM 1.3 as UM
import Cura 1.0 as Cura

Cura.ExpandableComponent
{
    id: preparingSetupSelector

    dragPreferencesNamePrefix: "view/settings"

    //property bool preSlicedData: PrintInformation.preSliced

    contentPadding: UM.Theme.getSize("default_lining").width
    contentHeaderTitle: catalog.i18nc("@label", "Dish Preparing")
    
    enabled: !preSlicedData
    disabledText: catalog.i18nc("@label shown when we load a Gcode file", "Print setup disabled. G-code file can not be modified.")

    UM.I18nCatalog
    {
        id: catalog
        name: "cura"
    }
    headerItem: DishesSetupSelectorHeader {}
    contentItem: DishesSetupSelectorContents {}
}