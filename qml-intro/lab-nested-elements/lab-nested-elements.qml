/*************************************************************************
 *
 * Copyright (c) 2015-2019, Klaralvdalens Datakonsult AB (KDAB)
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/
import QtQuick 2.9

// Base rectangle 400x400
Rectangle {
    id: root
    width: 400; height: 400
    color: "grey"

    Rectangle {
        color: "lightblue"
        x: 50
        y: 50
        width: 300
        height: 150

        Rectangle {
            x: 50; y: 50
            width: 50; height: 50
            color: "white"
        }
    }

    Rectangle {
        color: "#9900ff00"
        x: 50
        y: 200 // lightblue y + height
        width: 300
        height: 150
        clip: true // Cilp child objects are not allowed to be drawn outside the parent

        Rectangle {
            x: -100
            y: 50
            width: 150
            height: 50
            color: "blue"
        }
    }
}
