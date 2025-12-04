import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    id: rect
    property var model
    TabBar {
        id: tabBar
        currentIndex: 0
        width: parent.width
        height: 40
        //currentIndex: swipeView.currentIndex
        Repeater {
            model: rect.model

            TabButton {
                text: modelData
                width: implicitWidth
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
    Rectangle {
        x: 0
        y: 40
        width: parent.width
        height: 100
        SwipeView {
            id: swipeView
            currentIndex: tabBar.currentIndex
            anchors.fill: parent
            Rectangle {
                color: "#ff0000"
                visible: swipeView.currentIndex == 0
            }
            Rectangle {
                color: "#ffFF00"
                visible: swipeView.currentIndex == 1
            }
            Rectangle {
                color: "#0000FF"
                visible: swipeView.currentIndex == 2
            }
        }
    }
}