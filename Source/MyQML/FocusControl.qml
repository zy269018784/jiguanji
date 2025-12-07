import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    id: rect
    property real pTitleHeight
    property real pBottonWidth
    pBottonWidth: (width - 2 * border.width) / 5
    pTitleHeight: 30
    color:  "transparent"
    border.width: 2
    border.color: "#00ff00"
    Rectangle {
        x: rect.border.width
        y: rect.border.width
        width: rect.width - 2 * rect.border.width
        height: rect.pTitleHeight
        Label {
            anchors.fill: parent
            text: "聚焦控制"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
    Rectangle {
        x: rect.border.width
        y: rect.border.width + rect.pTitleHeight
        width:  rect.width - 2 * rect.border.width
        height: rect.height - rect.pTitleHeight- 2 * rect.border.width
        color:  "transparent"
        MyButton1 {
            objectName: "ButtonAutoFocus"
            text: "自动对焦"
            x: 0
            y: 0
            width: rect.pBottonWidth
            height: parent.height
        }
        MyButton1 {
            objectName: "ButtonUp"
            text: "手动上调"
            x: rect.pBottonWidth * 1
            y: 0
            width: rect.pBottonWidth
            height: parent.height
        }
        MyButton1 {
            objectName: "ButtonDown"
            text: "手动下调"
            x: rect.pBottonWidth * 2
            y: 0
            width: rect.pBottonWidth
            height: parent.height
        }
        MyButton1 {
            objectName: "ButtonStop"
            text: "停止"
            x: rect.pBottonWidth * 3
            y: 0
            width: rect.pBottonWidth
            height: parent.height
        }
        MyButton1 {
            objectName: "ButtonEmeStop"
            text: "紧急停止"
            x: rect.pBottonWidth * 4
            y: 0
            width: rect.pBottonWidth
            height: parent.height
        }
    }
}