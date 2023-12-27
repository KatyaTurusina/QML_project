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
            text: "Анализ"
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

    ColumnLayout {
        id: content
        anchors.horizontalCenter: parent.horizontalCenter
        Rectangle {
            id: data
            color: "#7860A4"
            width: 150
            height: 30
            radius: 10
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.topMargin: 10
            Text {
                anchors.centerIn: parent
                text: "Янв 2023"
                font.pixelSize: 14
                font.weight: Font.DemiBold
                color: "white"
                Image {
                    id: name
                    source: "qrc:/calendar.png"
                    anchors.left: parent.right
                    anchors.leftMargin: 15
                }
            }
        }

        ColumnLayout{
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.topMargin: -7
            RowLayout{
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

                Image{
                    id: diagramma
                    source: "qrc:/diagramma.png"

                }

                Column{
                    width: 105
                    height: 170
                    spacing: 5

                    Row{
                        spacing: 10
                        Rectangle{
                            width: 20
                            height: 20
                            radius: 180
                            color: "#CDCEF4"
                        }

                        Text{
                            text: "Еда"
                        }
                    }

                    Row{
                        spacing: 10
                        Rectangle{
                            width: 20
                            height: 20
                            radius: 180
                            color: "#6061D4"
                        }

                        Text{
                            text: "Дом"
                        }
                    }

                    Row{
                        spacing: 10
                        Rectangle{
                            width: 20
                            height: 20
                            radius: 180
                            color: "#7860A4"
                        }

                        Text{
                            text: "Транспорт"
                        }
                    }

                    Row{
                        spacing: 10
                        Rectangle{
                            width: 20
                            height: 20
                            radius: 180
                            color: "#8A8BE2"
                        }

                        Text{
                            text: "Одежда"
                        }
                    }

                    Row{
                        spacing: 10
                        Rectangle{
                            width: 20
                            height: 20
                            radius: 180
                            color: "#EEEEFC"
                        }

                        Text{
                            text: "Развлечения"
                        }
                    }

                    Row{
                        spacing: 10
                        Rectangle{
                            width: 20
                            height: 20
                            radius: 180
                            color: "#898CC9"
                        }

                        Text{
                            text: "Инвестиции"
                        }
                    }

                }
            }

            RowLayout{
                id: expenses
                Layout.bottomMargin: 10
                spacing: 10

                Text {
                    anchors.left: parent.left

                    id: expenses_text
                    text: "Расходы за этот месяц"
                    font.pixelSize: 14
                    color: "black"
                    font.family: "Open Sans"
                    font.bold: true
                    Layout.rightMargin: 20
                    Layout.topMargin: 7
                }

                Button {
                    id: buttonView
                    text: "Посмотреть"
                    width: 135
                    height: 30
                    font.pixelSize: 14
                    font.bold: true

                    background: Rectangle {
                        implicitWidth: 135
                        implicitHeight: 30
                        radius: 10
                        color: "#FD9671"
                    }

                    contentItem: Text {
                        text: buttonView.text
                        font: buttonView.font
                        color: "white"
                        anchors.centerIn: parent
                        leftPadding: 20
                    }

                    onClicked: {
                        buttonClicked4()
                    }
                }

            }
            ColumnLayout{

                Rectangle{
                    width: 320
                    height: 35
                    radius: 10
                    color: "#F2EEEE"

                    Rectangle{
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        width: 200
                        height: 35
                        radius: 10
                        color: "#CDCEF4"
                    }

                    Text {
                        id: right_text
                        text: "7000"
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.rightMargin: 10
                    }

                    Text {
                        id: left_text
                        text: "Еда"
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 10
                    }
                }
                Rectangle{
                    width: 320
                    height: 35
                    radius: 10
                    color: "#F2EEEE"

                    Rectangle{
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        width: 270
                        height: 35
                        radius: 10
                        color: "#CDCEF4"
                    }

                    Text {
                        id: right_text2
                        text: "12000"
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.rightMargin: 10
                    }

                    Text {
                        id: left_text2
                        text: "Дом"
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 10
                    }
                }

                Rectangle{
                    width: 320
                    height: 35
                    radius: 10
                    color: "#F2EEEE"

                    Rectangle{
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        width: 230
                        height: 35
                        radius: 10
                        color: "#CDCEF4"
                    }

                    Text {
                        id: right_text3
                        text: "9000"
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.rightMargin: 10
                    }

                    Text {
                        id: left_text3
                        text: "Транспорт"
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 10
                    }
                }

                Rectangle{
                    width: 320
                    height: 35
                    radius: 10
                    color: "#F2EEEE"

                    Rectangle{
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        width: 140
                        height: 35
                        radius: 10
                        color: "#CDCEF4"
                    }

                    Text {
                        id: right_text4
                        text: "3500"
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.rightMargin: 10
                    }

                    Text {
                        id: left_text4
                        text: "Одежда"
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 10
                    }
                }

                Rectangle{
                    width: 320
                    height: 35
                    radius: 10
                    color: "#F2EEEE"

                    Rectangle{
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        width: 100
                        height: 35
                        radius: 10
                        color: "#CDCEF4"
                    }

                    Text {
                        id: right_text5
                        text: "1400"
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.rightMargin: 10
                    }

                    Text {
                        id: left_text5
                        text: "Развлечения"
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: 10
                    }
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
            }
            MenuButton{
                buttonText: "Меню"
                iconSource: "qrc:/menu.png"
                onMenuButtonClicked: {
                    root.buttonClicked3()
                }
            }
        }
    }
}
