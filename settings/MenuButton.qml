import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ColumnLayout {
    spacing: 2
    property string buttonText: "Text"
    property string iconSource: "qrc:/defaultIcon.png"
    Button {
        id: myButton
        Layout.alignment: Qt.AlignHCenter
        property color buttonColor: "#6061D4"
        background: Rectangle {
            implicitWidth: 50
            implicitHeight: 50
            color: myButton.buttonColor
            radius: 15
        }
        icon.source: iconSource
        icon.color: "transparent"
    }

    Text {
        text: buttonText
        font.family: "Open Sans"
        font.pixelSize: 12
        Layout.alignment: Qt.AlignHCenter // Центрируем текст по горизонтали
    }

}
