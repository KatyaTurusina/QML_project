import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.2
import Qt5Compat.GraphicalEffects

ApplicationWindow {
    id:root
    color: "white"
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
            text: "Список расходов"
            font.pixelSize: 16
            color: "white"
            font.family: "Open Sans"
            font.bold: true
            topPadding: 30
        }
    }

    Item {
        id: item1
        visible: true
        width: parent.width
        height: parent.height
        ScrollView {
            id: frame
            clip: true
            anchors.fill: parent
            //other properties
            ScrollBar.vertical.policy: ScrollBar.AlwaysOff
            Flickable {
                contentHeight: 800
                width: parent.width
                Rectangle {
                    id : rectangle_main
                    anchors.fill: parent

                    Column{
                        spacing: 20
                        padding: 10

                        Text {
                            leftPadding: 20
                            anchors.left: parent.left
                            text: "5 января 2023"
                            font.pixelSize: 15
                            font.family: "Open Sans"
                            font.bold: true
                            topPadding: 30
                        }
                        Rectangle{
                            id:lightpurple_rec
                            width: rectangle_main.width-20
                            height: 94
                            color:"#CDCEF4"
                            radius: 10
                            layer.enabled: true
                            layer.effect: DropShadow {
                                transparentBorder: false
                                horizontalOffset: 3
                                samples: 5
                                spread: 0
                                radius: 4
                                color:"#A2A0A0"
                                verticalOffset: 3
                            }
                            Column{
                                spacing: 2
                                leftPadding: 10
                                MyComponent{
                                    id:milk
                                    inputText: "Молоко"
                                }
                                MyComponent{
                                    id:gorox
                                    inputText: "Горошек"
                                }
                                MyComponent{
                                    id:juice
                                    inputText: "Сок"
                                }
                            }
                            Column{
                                spacing: 2
                                rightPadding: 10
                                anchors.right: parent.right
                                MyComponent{
                                    id:milk_price
                                    inputText: "50 руб"
                                }
                                MyComponent{
                                    id:gorox_price
                                    inputText: "100 руб"
                                }
                                MyComponent{
                                    id:juice_price
                                    inputText: "150 руб"
                                }

                            }
                        }
                        PurpleRec{
                            id:first
                        }
                        Text {
                            leftPadding: 20
                            anchors.left: parent.left
                            text: "12 января 2023"
                            font.pixelSize: 15
                            font.family: "Open Sans"
                            font.bold: true
                            topPadding: 30
                        }
                        Rectangle{
                            id:lightpurple_rec2
                            width: rectangle_main.width-20
                            height: 94
                            color:"#CDCEF4"
                            radius: 10
                            layer.enabled: true
                            layer.effect: DropShadow {
                                transparentBorder: false
                                horizontalOffset: 3
                                samples: 5
                                spread: 0
                                radius: 4
                                color:"#A2A0A0"
                                verticalOffset: 3
                            }
                            Column{
                                spacing: 2
                                leftPadding: 10
                                MyComponent{

                                    inputText: "Молоко"
                                }
                                MyComponent{

                                    inputText: "Горошек"
                                }
                                MyComponent{

                                    inputText: "Сок"
                                }
                            }
                            Column{
                                spacing: 2
                                rightPadding: 10
                                anchors.right: parent.right
                                MyComponent{
                                    id:milk_price2
                                    inputText: "50 руб"
                                }
                                MyComponent{
                                    id:gorox_price2
                                    inputText: "100 руб"
                                }
                                MyComponent{
                                    id:juice_price2
                                    inputText: "150 руб"
                                }

                            }
                        }
                        PurpleRec{
                            id:second
                        }

                        Text {
                            leftPadding: 20
                            anchors.left: parent.left
                            text: "16 февраля 2023"
                            font.pixelSize: 15
                            font.family: "Open Sans"
                            font.bold: true
                            topPadding: 30
                        }
                        Rectangle{
                            id:lightpurple_rec3
                            width: rectangle_main.width-20
                            height: 94
                            color:"#CDCEF4"
                            radius: 10
                            layer.enabled: true
                            layer.effect: DropShadow {
                                transparentBorder: false
                                horizontalOffset: 3
                                samples: 5
                                spread: 0
                                radius: 4
                                color:"#A2A0A0"
                                verticalOffset: 3
                            }
                            Column{
                                spacing: 2
                                leftPadding: 10
                                MyComponent{

                                    inputText: "Молоко"
                                }
                                MyComponent{

                                    inputText: "Горошек"
                                }
                                MyComponent{

                                    inputText: "Сок"
                                }
                            }
                            Column{
                                spacing: 2
                                rightPadding: 10
                                anchors.right: parent.right
                                MyComponent{

                                    inputText: "50 руб"
                                }
                                MyComponent{

                                    inputText: "100 руб"
                                }
                                MyComponent{

                                    inputText: "150 руб"
                                }

                            }
                        }
                        PurpleRec{
                            id:third
                        }



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

