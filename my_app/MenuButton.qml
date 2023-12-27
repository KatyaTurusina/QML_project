import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ColumnLayout {
    spacing: 2
    signal menuButtonClicked() // Определение сигнала

    property string buttonText: "Text"
    property string iconSource: "qrc:/defaultIcon.png"
    property string buttonColor: "#6061D4"

    Button {
        id: myButton
        Layout.alignment: Qt.AlignHCenter
        background: Rectangle {
            implicitWidth: 50
            implicitHeight: 50
            color: buttonColor
            radius: 15
        }
        icon.source: iconSource
        icon.color: "transparent"
        onClicked: {
            menuButtonClicked() // Излучаем сигнал при нажатии кнопки
        }
    }

    Text {
        text: buttonText
        font.family: "Open Sans"
        font.pixelSize: 12
        Layout.alignment: Qt.AlignHCenter
    }
}

