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
            text: "Расходы"
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
            width: root.width
            Layout.alignment: Qt.AlignHCenter
            Item {
                width: root.width
                height: 45
                Text {
                    anchors.centerIn: parent
                    text:"Введите сумму покупки"
                    font.pixelSize: 15
                    font.family: "Open Sans"
                    font.weight: 600
                }

            }
            Item {
                width: root.width
                height: 35

                TextField {
                    id: textField
                    verticalAlignment: TextInput.AlignVCenter
                    horizontalAlignment: TextInput.AlignHCenter
                    height: 30
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
                height: 230
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
                height: 45
                Text {
                    anchors.centerIn: parent
                    text:"Выберите категорию"
                    font.pixelSize: 15
                    font.family: "Open Sans"
                    font.weight: 600
                }

            }
            Item {
                width: root.width
                height: 130
                GridLayout {
                    anchors.centerIn: parent
                    columns: 4
                    rows: 2
                    rowSpacing: 5
                    columnSpacing: 20

                    Repeater {
                        model: [
                            { text: "Дом", icon: "qrc:/home.png" },
                            { text: "Одежда", icon: "qrc:/pants.png" },
                            { text: "Еда", icon: "qrc:/apple_.png" },
                            { text: "Инвестиции", icon: "qrc:/bank.svg" },
                            { text: "Дом", icon: "qrc:/home.png" },
                            { text: "Одежда", icon: "qrc:/pants.png" },
                            { text: "Еда", icon: "qrc:/apple_.png" },
                            { text: "Инвестиции", icon: "qrc:/bank.png" }
                        ]

                        delegate: MenuButton {
                            buttonText: modelData.text
                            iconSource: modelData.icon
                            buttonColor: "#7860A4"
                            Layout.fillWidth: true
                        }
                    }
                }
            }
            Item {
                width: root.width
                height: 70
                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 40
                    anchors.rightMargin: 40
                    Button {
                        Text {
                            text: "Сканировать чек"
                            color: "white"  // Установка белого цвета текста
                            anchors.centerIn: parent
                            font.family: "Open Sans"
                            font.pixelSize: 14
                            font.weight: 650
                        }
                        font.bold: true
                        background: Rectangle {
                            implicitWidth: 170
                            implicitHeight: 35
                            color: "#6061D4"
                            radius: 10
                        }
                    }
                    Button {
                        Text {
                            text: "Сохранить"
                            color: "white"  // Установка белого цвета текста
                            anchors.centerIn: parent
                            font.family: "Open Sans"
                            font.pixelSize: 14
                            font.weight: 650
                        }
                        background: Rectangle {
                            implicitWidth: 100
                            implicitHeight: 35
                            color: "#FD9671"
                            radius: 10
                        }
                    }

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
            MenuButton{
                buttonText: "Расходы"
                iconSource: "qrc:/rashodi.png"
            }
            MenuButton{
                buttonText: "Доходы"
                iconSource: "qrc:/dohodi.png"
                onMenuButtonClicked: {
                    root.buttonClicked1()
                }
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
