import QtQuick 2.15
import QtQuick.Controls 2.15

Switch{
    id: root
    property color checkedColor: "#CDCEF4"
    checked: true

    indicator: Rectangle {
        width: 50
        height: 24
        radius: height / 2
        color: root.checked ? checkedColor : "white"
        border.width: 2
        border.color: root.checked ? checkedColor : "#E5E5E5"

        Rectangle {
            x: root. checked ? parent. width - width - 2: 1
            width: root.checked ? parent. height - 4: parent. height - 2
            height: width
            radius: height / 2
            anchors.verticalCenter: parent.verticalCenter
            color: "white"
            border.color: "#D5D5D5"
            Behavior on x {
                NumberAnimation { duration: 200 }
            }
        }
    }

}
