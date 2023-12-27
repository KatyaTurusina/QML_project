import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.2


Component {
    id: firstArticle

    Flickable {
        id: flickable
        anchors.fill: parent

        TextArea.flickable: TextArea{
            text: "<div> Экономия денег является важной частью финансовой стабильности и достижения финансовых целей. Каждый из нас должен стремиться к оптимальному использованию своих ресурсов и рассмотреть возможности экономить на ежедневных расходах.
В этой статье мы рассмотрим несколько важных принципов правильной экономии денег.

Первое правило экономии – составление бюджета. Без планирования расходов невозможно достичь финансовой стабильности. Определите свои доходы и расходы, исходя из этого разработайте бюджет. Учитывайте не только основные статьи расходов, такие как питание, жилье и коммунальные услуги, но и небольшие траты, такие как кофе на вынос или покупка книги. Составление бюджета поможет выявить потенциальные области сэкономить деньги.

Второе правило – сравнивайте цены и ищите скидки. До совершения покупок, особенно крупных расходов, стоит изучить рынок и сравнить
цены в разных магазинах или онлайн-площадках. Также обратите внимание на акции и скидки. Многие магазины предлагают лояльным клиентам
программы накопительных бонусов или дисконтные карточки. Копите бонусы и используйте их для снижения следующей покупки.</div>
<div><img style='vertical-align: middle';margin-top:20px; src='/reclama.jpg' width='335' height='190' > </div>
<div>Экономия денег является важной частью финансовой стабильности и достижения финансовых целей. Каждый из нас должен стремиться
к оптимальному использованию своих ресурсов и рассмотреть возможности экономить на ежедневных расходах.
В этой статье мы рассмотрим несколько важных принципов правильной экономии денег.

</div>"
            textFormat : Text.RichText
            wrapMode: TextArea.Wrap
            font.pixelSize: 13
        }



        ScrollBar.vertical: ScrollBar{
            policy: ScrollBar.AlwaysOff
        }
        anchors.margins: 20

    }
}
