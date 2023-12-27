import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: root
    width: 360;
    height: 680;
    visible: true
    title: qsTr("Планировщик бюджета")
    StackView{
        id:stack_view
        anchors.fill: parent
        initialItem: loading
    }
    Loading {
        id:loading
        onButtonClicked: {
            stack_view.push(dohodi)
        }
    }
    Dohodi {
        id: dohodi
        visible: false
        onButtonClicked1: {
            stack_view.replace(rashodi)
        }
        onButtonClicked2: {
            stack_view.replace(analysis)
        }
        onButtonClicked3: {
            stack_view.replace(menu)
        }
    }
    Rashodi{
        id:rashodi
        visible: false
        onButtonClicked1: {
            stack_view.replace(dohodi)
        }
        onButtonClicked2: {
            stack_view.replace(analysis)
        }
        onButtonClicked3: {
            stack_view.replace(menu)
        }

    }
    Analysis{
        id:analysis
        visible: false
        onButtonClicked1: {
            stack_view.replace(rashodi)
        }
        onButtonClicked2: {
            stack_view.replace(dohodi)
        }
        onButtonClicked3: {
            stack_view.replace(menu)
        }
        onButtonClicked4: {
            stack_view.replace(exp)
        }

    }
    List_of_expenses{
        id:exp
        visible: false
        onButtonClicked1: {
            stack_view.replace(rashodi)
        }
        onButtonClicked2: {
            stack_view.replace(dohodi)
        }
        onButtonClicked3: {
            stack_view.replace(analysis)
        }
        onButtonClicked4: {
            stack_view.replace(menu)
        }
    }

    MyMenu{
        id:menu
        visible: false
        onButtonClicked1: {
            stack_view.replace(rashodi)
        }
        onButtonClicked2: {
            stack_view.replace(dohodi)
        }
        onButtonClicked3: {
            stack_view.replace(analysis)
        }
        onButtonClicked4: {
            stack_view.replace(settings)
        }
        onButtonClicked5: {
            stack_view.replace(articles)
        }
    }
    Settings{
        id:settings
        visible: false
        onButtonClicked1: {
            stack_view.replace(rashodi)
        }
        onButtonClicked2: {
            stack_view.replace(dohodi)
        }
        onButtonClicked3: {
            stack_view.replace(analysis)
        }
        onButtonClicked4: {
            stack_view.replace(menu)
        }
    }
    Articles{
        id:articles
        visible: false
        onButtonClicked1: {
            stack_view.replace(rashodi)
        }
        onButtonClicked2: {
            stack_view.replace(dohodi)
        }
        onButtonClicked3: {
            stack_view.replace(analysis)
        }
        onButtonClicked4: {
            stack_view.replace(menu)
        }
    }

}
