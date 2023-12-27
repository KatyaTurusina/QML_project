import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

Page {
    id: root
    width: 360;
    height: 680;
    visible: true
    title: qsTr("Планировщик бюджета")
    signal buttonClicked();

    Rectangle{
        anchors.fill:parent
        gradient:
            Gradient{
            GradientStop{position: 1; color: "#6061D4"}
            GradientStop{position: 0; color: "#FD9671"}
        }
    }
    ColumnLayout {
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -100
        spacing: 20
        Image {
            source: "qrc:/logo.svg"
            width: 100
            height: 100
            fillMode: Image.PreserveAspectFit
            MouseArea{
                anchors.fill:parent
                onClicked: {
                    root.buttonClicked()
                }
            }

        }
        Text {
            text: qsTr("Добрый день!")
            font.pixelSize: 20
            color: "#ffffff"
            horizontalAlignment: Text.AlignHCenter
            font.family: "Open Sans"
        }
    }
}
