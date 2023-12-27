import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.2
import Qt5Compat.GraphicalEffects


Text {
    property string inputText: "Text"
    text: inputText
    font.pixelSize: 15
    color: "white"
    font.family: "Open Sans"
    font.bold: true
    topPadding: 10
}
