import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

Page {
    id:root
    width: 360;
    height: 680;
    visible: true
    title: qsTr("Планировщик бюджета")
    signal buttonClicked1();
    signal buttonClicked2();
    signal buttonClicked3();
    signal buttonClicked4();

    header: ToolBar {
        height: 60
        background: Rectangle {
            color: "#6061D4"
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Настройки"
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
        spacing: 30
        RowLayout{
            id: notif
            spacing: 165

            Text {
                anchors.left: parent.left

                id: notif_text
                text: "Уведомления"
                font.pixelSize: 14
                color: "black"
                font.family: "Open Sans"
            }

            CustomSwitch {
                anchors.right: parent.right
                checked: false
            }
        }

        RowLayout{
            id: size_t
            spacing: 140

            Text {
                anchors.left: parent.left

                id: size_t_text
                text: "Размер текста"
                font.pixelSize: 14
                color: "black"
                font.family: "Open Sans"
            }

            Image {
                id: size_switch
                source: "qrc:/size_text.png"
            }
        }

        RowLayout{
            id: support
            spacing: 105

            Text {
                anchors.left: parent.left
                id: support_text
                text: "Обратиться в поддержку"
                font.pixelSize: 14
                color: "black"
                font.family: "Open Sans"
            }

            Image {
                id: support_img
                source: "qrc:/Left_Arrow.png"
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
                onMenuButtonClicked: {
                    root.buttonClicked1()
                }
            }
            MenuButton{
                buttonText: "Доходы"
                iconSource: "qrc:/dohodi.png"
                onMenuButtonClicked: {
                    root.buttonClicked2()
                }
            }
            MenuButton{
                buttonText: "Анализ"
                iconSource: "qrc:/analiz.png"
                onMenuButtonClicked: {
                    root.buttonClicked3()
                }
            }
            MenuButton{
                buttonText: "Меню"
                iconSource: "qrc:/menu.png"
                onMenuButtonClicked: {
                    root.buttonClicked4()
                }
            }
        }
    }
}
