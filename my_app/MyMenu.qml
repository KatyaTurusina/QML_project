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
    signal buttonClicked5();

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
        anchors.margins: 10
        anchors.topMargin: 10
        anchors.leftMargin: 20
        spacing: 20

        Button {
            width: 320
            height: 50
            text: "Полезные статьи"
            font.weight: Font.DemiBold

            background: Rectangle {
                width: parent.width
                radius: 10
                color: "#CDCEF4"
            }
            onClicked: {
                buttonClicked5()
            }
        }

        Button {
            width: 320
            height: 50
            text: "Настройки"
            font.weight: Font.DemiBold

            background: Rectangle {
                width: parent.width
                height: parent.height
                radius: 10
                color: "#CDCEF4"
            }

            onClicked: {
                buttonClicked4()
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
            }
        }
    }
}
