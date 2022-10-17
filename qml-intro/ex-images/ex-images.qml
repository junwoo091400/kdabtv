/*************************************************************************
 *
 * Copyright (c) 2013-2019, Klaralvdalens Datakonsult AB (KDAB)
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    color: "#00affc"

    Image {
        x: 150; y: 150

        // 47 x 111 px image
        source: "../images/rocket.png"

        // Changing sourceSize to sth bigger than original pic doesn't affect the displayed size!
        sourceSize.width: 47
        // Setting it to smaller value will constrain the pixel size of the image!
        sourceSize.height: 33

        // Picture will be scaled down to fit 'sourceSize' size constraints,

        // Then if you set width/height, it will scale AGAIN, from this 'scaled down' image.
        width: sourceSize.width * 3
        height: sourceSize.height * 3

        Component.onCompleted: console.log(width, height, sourceSize)
    }
}
