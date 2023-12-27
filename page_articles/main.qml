import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.2

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
            text: "Полезные статьи"
            font.pixelSize: 16
            color: "white"
            font.family: "Open Sans"
            font.bold: true
            topPadding: 30
        }

        Row {
            spacing: 10
            topPadding: 10

            Button {
                id: backButton
                icon.width: 100
                icon.height: 100
                icon.color: "transparent"
                icon.source: "icons/arrow.png"
                //text: "Back"
                visible: stackView.depth > 1
                onClicked: stackView.pop()
                background: Rectangle {
                    color: "#6061D4"
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: listArticles
        anchors.fill: parent

        onCurrentItemChanged: {
            console.log("StackView Depth:", stackView.depth);
            backButton.visible = stackView.depth > 1;
            console.log("Back Button Visibility:", backButton.visible);
            header_page_text.text = stackView.currentItem ? stackView.currentItem.itemName : "Home";
        }

        Component {
            id: listArticles

            /*ScrollView{

            id:scroll
            width: parent.width
            height: parent.height
            ScrollBar.vertical.policy:ScrollBarAlwaysOnS*/

            Rectangle {
                width: stackView.width
                height: stackView.height
                //color: "red"
                Column {
                    anchors.top: parent.top
                    anchors.left: parent.left
                    leftPadding: 10
                    topPadding: 10
                    spacing: 20
                     //ссылка на первую статью
                    Button {
                        id: first_control
                        text: qsTr("Как правильно экономить деньги")
                        contentItem: Text {
                            text: first_control.text
                            font: first_control.font
                            opacity: enabled ? 1.0 : 0.3
                            color: first_control.down ? "#FFFFFF" : "#CDCEF4"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideRight
                        }
                        background: Rectangle {
                            implicitWidth: root.width-20
                            implicitHeight: 48
                            opacity: enabled ? 1 : 0.3
                            color: first_control.down ? "#CDCEF4" : "#6061D4"
                            border.color: first_control.down ? "#CDCEF4" : "#6061D4"
                            border.width: 1
                            radius: 10
                        }
                        onClicked: stackView.push(firstArticle)

                    }
                     //ссылка на вторую статью
                    Button {

                        id: second_control
                        text: qsTr("Финансовые стратегии")
                        contentItem: Text {
                            text: second_control.text
                            font: second_control.font
                            opacity: enabled ? 1.0 : 0.3
                            color: second_control.down ? "#FFFFFF" : "#CDCEF4"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideRight
                        }
                        background: Rectangle {
                            implicitWidth: root.width-20
                            implicitHeight: 48
                            opacity: enabled ? 1 : 0.3
                            color: second_control.down ? "#CDCEF4" : "#6061D4"
                            border.color: second_control.down ? "#CDCEF4" : "#6061D4"
                            border.width: 1
                            radius: 10
                        }
                        onClicked: stackView.push(firstArticle)

                    }
                    Button {

                        id: third_control
                        text: qsTr("Как научиться планировать свой бюджет?")
                        contentItem: Text {
                            text: third_control.text
                            font: third_control.font
                            opacity: enabled ? 1.0 : 0.3
                            color: third_control.down ? "#FFFFFF" : "#CDCEF4"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideRight
                        }
                        background: Rectangle {
                            implicitWidth: root.width-20
                            implicitHeight: 48
                            opacity: enabled ? 1 : 0.3
                            color: third_control.down ? "#CDCEF4" : "#6061D4"
                            border.color: third_control.down ? "#CDCEF4" : "#6061D4"
                            border.width: 1
                            radius: 10
                        }
                        onClicked: stackView.push(firstArticle)

                    }
                    Button {

                        id: fourth_control
                        text: qsTr("Где найти горошек со скидкой 50%")
                        contentItem: Text {
                            text: fourth_control.text
                            font: fourth_control.font
                            opacity: enabled ? 1.0 : 0.3
                            color: fourth_control.down ? "#FFFFFF" : "#CDCEF4"
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            elide: Text.ElideRight
                        }
                        background: Rectangle {
                            implicitWidth: root.width-20
                            implicitHeight: 48
                            opacity: enabled ? 1 : 0.3
                            color: fourth_control.down ? "#CDCEF4" : "#6061D4"
                            border.color: fourth_control.down ? "#CDCEF4" : "#6061D4"
                            border.width: 1
                            radius: 10
                        }
                        onClicked: stackView.push(firstArticle)

                    }
                    
                    Image {
                        anchors.verticalCenter: root
                        //anchors.bottom: parent.bottom
                        id: photoPreview
                        width: parent.width-20
                        height: 200
                        //Layout.fillWidth: true
                        source: "/reclama.jpg"
                    }


                    }
                }

        }

    //}
}
    FirstArticle {
        id: firstArticle
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


