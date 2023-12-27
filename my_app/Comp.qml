import QtQuick 2.15

Rectangle{
    property alias myText: myText
    id:rect1
    Text{
        id: myText
        text: "text"
        font.family: "Open Sans"
        anchors.centerIn: rect1
        font.pixelSize: 16
    }
}
