import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

ApplicationWindow {
    id:root
    width: 360;
    height: 640;
    minimumWidth: 300
    visible: true
    title: qsTr("Планировщик бюджета")

    header: ToolBar {
        height: 60
        background: Rectangle {
            color: "#6061D4"
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Меню"
            font.pixelSize: 16
            color: "white"
            font.family: "Open Sans"
            font.bold: true
            topPadding: 30
        }

        Row {
            spacing: 10
            topPadding: 20

            Button {
                id: backButton
                scale: 0.8
                icon.color: "transparent"
                icon.source: "qrc:/arrow.png"
                visible: stackView.depth > 1
                onClicked: stackView.pop()
                background: Rectangle {
                    color: "#6061D4"
                }
            }
        }
    }

    Column {
        id: content
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 10
        anchors.leftMargin: 20
        spacing: 50
        Button{
            background: Rectangle {
                width: 320
                height: 50
                radius: 10
                color: "#CDCEF4"
                Text {
                    id: center_text
                    text: "Полезные статьи"
                    anchors.centerIn: parent
                    font.weight: Font.DemiBold
                }
            }

        }
        Button{
            background: Rectangle {
                width: 320
                height: 50
                radius: 10
                color: "#CDCEF4"
                Text {
                    id: center_text2
                    text: "Настройки"
                    anchors.centerIn: parent
                    font.weight: Font.DemiBold
                }
            }

        }
    }

    footer: ToolBar {
        id:buttons
        height: 80
        background: Rectangle {
            color: "#EFF0F9"
        }
        RowLayout{
            spacing: 25
            anchors.centerIn: parent
            MenuButton{
                buttonText: "Расходы"
                iconSource: "qrc:/rashodi.png"
            }
            MenuButton{
                buttonText: "Доходы"
                iconSource: "qrc:/dohodi.png"
            }
            MenuButton{
                buttonText: "Анализ"
                iconSource: "qrc:/analiz.png"
            }
            MenuButton{
                buttonText: "Меню"
                iconSource: "qrc:/menu.png"
            }
        }
    }
}
