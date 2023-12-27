import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

Page {
    id: root
    width: 360;
    height: 680;
    visible: true
    title: qsTr("Планировщик бюджета")
    signal buttonClicked1();
    signal buttonClicked2();
    signal buttonClicked3();

    header: ToolBar {
        id: header
        height: 60
        background: Rectangle {
            color: "#6061D4"
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Доходы"
            font.pixelSize: 16
            color: "white"
            font.family: "Open Sans"
            font.bold: true
            topPadding: 30
        }

    }

    ScrollView {
        anchors.fill: parent
        ScrollBar.vertical: ScrollBar {
            policy: ScrollBar.AlwaysOff
        }
        Column {
            spacing: 10
            width: root.width
            Layout.alignment: Qt.AlignHCenter

            Item {
                width: root.width
                height: 80

                Rectangle {
                    id:objectWithShadow
                    width: parent.width - 50
                    height: 50
                    color: "#6061D4"
                    radius: 10  // Скругляем уголки
                    anchors.centerIn: parent

                    GridLayout {
                        id: grid
                        columns: 2
                        columnSpacing: 50
                        rowSpacing: 5
                        anchors.centerIn: parent
                        Text {
                            text: "Наличные"
                            color: "white"
                            Layout.alignment: Qt.AlignCenter
                            font.family: "Open Sans"
                            font.pixelSize: 14
                        }
                        Text {
                            text: "Безналичные"
                            color: "white"
                            Layout.alignment: Qt.AlignCenter
                            font.family: "Open Sans"
                            font.pixelSize: 14
                        }
                        Text {
                            text: "15 094 ₽"
                            color: "white"
                            Layout.alignment: Qt.AlignCenter
                            font.family: "Open Sans"
                            font.pixelSize: 14
                            font.weight: 750
                        }
                        Text {
                            text: "10 234 ₽"
                            color: "white"
                            Layout.alignment: Qt.AlignCenter
                            font.family: "Open Sans"
                            font.pixelSize: 14
                            font.weight: 750
                        }
                    }
                }
            }

            Item {
                width: root.width
                height: 18
                Text {
                    anchors.centerIn: parent
                    text:"Добавить доходы"
                    font.pixelSize: 16
                    font.family: "Open Sans"
                    font.weight: 500
                }

            }
            Item {
                width: root.width
                height: 50

                TextField {
                    id: textField
                    verticalAlignment: TextInput.AlignVCenter
                    horizontalAlignment: TextInput.AlignHCenter
                    height: 40
                    font.pixelSize: 15
                    font.family: "Open Sans"

                    anchors {
                        left: parent.left
                        right: parent.right
                        leftMargin: 30
                        rightMargin: 30
                    }

                    background: Rectangle {
                        anchors.fill: parent
                        radius: 20
                        color: "#fff"
                        border.width: 1
                        border.color: textField.activeFocus ? "#87CEFA" : "#CDCEF4"
                    }

                    onFocusChanged: {
                        if (focus) {
                            textField.focus = true;
                        }
                    }


                }
            }
            Item {
                width: root.width
                height: 210
                GridLayout {
                    id: keypad
                    anchors.centerIn: parent
                    columns: 4
                    rows: 4
                    rowSpacing: 2
                    columnSpacing: 2
                    Layout.bottomMargin: 30

                    Repeater {
                        model:
                            [
                            "+", "1", "2", "3",
                            "-", "4", "5", "5",
                            "*", "7", "8", "9",
                            "/", ".", "0", "<-"]
                        Button {
                            text: modelData
                            font.pixelSize: 15
                            font.family: "Open Sans"
                            background: Rectangle {
                                implicitWidth: 50
                                implicitHeight: 40
                                color: "#CDCEF4"
                                radius: 15
                            }
                            onClicked: {
                                if (text === "<-") {
                                    textField.text = "";
                                }else {
                                    textField.text += text;
                                }
                            }
                            Layout.fillWidth: true
                            Layout.fillHeight: true
                            Layout.columnSpan: 1
                            Layout.rowSpan: 1
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            Layout.margins: 2
                            Layout.preferredWidth: (keypad.width - keypad.columnSpacing * (keypad.columns - 1)) / keypad.columns
                            Layout.preferredHeight: (keypad.height - keypad.rowSpacing * (keypad.rows - 1)) / keypad.rows
                        }
                    }
                }
            }
            Item {
                width: root.width
                height: 40
                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 40
                    anchors.rightMargin: 40
                    anchors.topMargin: 7

                    Button {
                        Text {
                            text: "Наличные"
                            color: "white"  // Установка белого цвета текста
                            anchors.centerIn: parent
                            font.family: "Open Sans"
                            font.pixelSize: 14
                            font.weight: 600
                        }

                        font.bold: true // Добавлено жирное начертание для текста
                        Layout.fillWidth: true
                        background: Rectangle {
                            implicitHeight: 35
                            color: "#6061D4"
                            radius: 10
                        }
                    }

                    Button {
                        Text {
                            text: "Безналичные"
                            color: "white"  // Установка белого цвета текста
                            anchors.centerIn: parent
                            font.family: "Open Sans"
                            font.pixelSize: 14
                            font.weight: 600
                        }
                        font.bold: true // Добавлено жирное начертание для текста
                        Layout.fillWidth: true
                        background: Rectangle {
                            implicitHeight: 35
                            color: "#6061D4"
                            radius: 10
                        }
                    }
                }
            }
            Item {
                width: root.width
                height: 10
                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 40
                    anchors.rightMargin: 40
                    anchors.topMargin: 5
                    anchors.bottomMargin: 20
                    Button {
                        Text {
                            text: "Добавить"
                            color: "white"  // Установка белого цвета текста
                            anchors.centerIn: parent
                            font.family: "Open Sans"
                            font.pixelSize: 14
                            font.weight: 650
                        }

                        font.bold: true // Добавлено жирное начертание для текста
                        Layout.alignment: Qt.AlignHCenter
                        background: Rectangle {
                            implicitWidth: 150
                            implicitHeight: 40
                            color: "#FD9671"
                            radius: 10
                        }
                        onClicked: {
                            textField.text = ""
                        }

                    }

                }

            }
            Item {
                width: parent.width
                height: 230
                Image {
                    source: "qrc:/image 3.png"
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                }
            }


        }
    }

    footer: ToolBar {
        id: buttons
        height: 80
        background: Rectangle {
            color: "#EFF0F9"
        }
        RowLayout{
            spacing: 25
            anchors.centerIn: parent
            MenuButton {
                buttonText: "Расходы"
                iconSource: "qrc:/rashodi.png"
                onMenuButtonClicked: {
                    root.buttonClicked1()
                }
            }

            MenuButton{
                buttonText: "Доходы"
                iconSource: "qrc:/dohodi.png"

            }
            MenuButton{
                buttonText: "Анализ"
                iconSource: "qrc:/analiz.png"
                onMenuButtonClicked: {
                    root.buttonClicked2()
                }
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
