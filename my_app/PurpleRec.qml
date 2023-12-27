import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.2
import Qt5Compat.GraphicalEffects

Rectangle{
    id:darkpurple_rec
    width: rectangle_main.width-20
    height: 40
    color:"#7D79DB"
    radius: 10
    Text {
        leftPadding:10
        topPadding: darkpurple_rec.height/4
        text: "Итого"
        font.pixelSize: 15
        color: "white"
        font.family: "Open Sans"
        font.bold: true


    }
    Text {
        rightPadding:10
        topPadding: darkpurple_rec.height/4
        anchors.right: parent.right
        text: "300 руб"
        font.pixelSize: 15
        color: "white"
        font.family: "Open Sans"
        font.bold: true

    }
    layer.enabled: true
    layer.effect: DropShadow {
        transparentBorder: false
        horizontalOffset: 2
        samples: 5
        spread: 0
        color:"#A2A0A0"
        verticalOffset: 2
    }
}
