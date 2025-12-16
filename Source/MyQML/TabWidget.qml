import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    id: control
    property var model
    property real pTitleHeight
    property real spacing
    pTitleHeight: 40
    spacing: 4
    border.width: 2
    border.color: "#ebebeb"
    TabBar {
        id: tabBar
        currentIndex: 0
        x: control.border.width
        y: control.border.width
        width: control.width - 2 * control.border.width
        height: control.pTitleHeight
        Repeater {
            model: control.model

            TabButton {
                text: modelData
                width: tabBar.width / 3
                padding: 10

                // 自定义样式
                background: Rectangle {
                    color: parent.checked ? "white" : "transparent"
                    border.color: parent.checked ? "#ccc" : "transparent"
                    border.width: 1
                    radius: 5
                    anchors.bottom: parent.bottom
                }

                contentItem: Text {
                    text: parent.text
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: parent.checked ? "#2196F3" : "#666"
                    font.bold: parent.checked
                }
            }
        }
    }

    FocusParameters {
        x: control.border.width
        y: control.border.width + control.pTitleHeight
        width:  control.width - 2 * control.border.width
        height: control.height - control.pTitleHeight- 2 * control.border.width - control.spacing
        visible: tabBar.currentIndex === 0
    }
    CommunicationParameters {
        x: control.border.width
        y: control.border.width + control.pTitleHeight
        width:  control.width - 2 * control.border.width
        height: control.height - control.pTitleHeight- 2 * control.border.width - control.spacing
        visible: tabBar.currentIndex === 1
    }
    SensorParameters {
        x: control.border.width
        y: control.border.width + control.pTitleHeight
        width:  control.width - 2 * control.border.width
        height: control.height - control.pTitleHeight- 2 * control.border.width - control.spacing
        visible: tabBar.currentIndex === 2
    }
}