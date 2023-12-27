import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.2

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
            text: "Полезные статьи"
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

    StackView {
        id: stackView
        initialItem: listArticles
        anchors.fill: parent
        background: Rectangle {
            anchors.fill: parent
            color: "white"
        }

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

