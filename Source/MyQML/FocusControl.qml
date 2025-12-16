import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
/*
*   border = 2
*   title = 30
*   content = 32
*   spacing = 4
*   border = 2
* */
Rectangle
{
    id: control
    //property ListModel model
    property real pTitleHeight
    property real pBottonWidth
    property real spacing
    property color buttonDefaultColor
    property color buttonHoveredColor
    property color buttonPressedColor
    property color textColor
    pTitleHeight: 30
    pBottonWidth:  (width - 2 * border.width - 6 * spacing) / 5
    spacing: 4
    color:  "#f5f5f5"
    border.width: 2
    border.color: "#ebebeb"
    Rectangle {
        x: control.border.width
        y: control.border.width
        width: control.width - 2 * control.border.width
        height: control.pTitleHeight
        color:  control.color
        Label {
            anchors.fill: parent
            text: "聚焦控制"
           // text:  (model && model.count !== undefined) ? model.count.toString() : "A"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
    Rectangle {
        x: control.border.width
        y: control.border.width + control.pTitleHeight
        width:  control.width - 2 * control.border.width
        height: control.height - control.pTitleHeight- 2 * control.border.width - control.spacing
        color:  control.color
        MyButton3 {
            objectName: "ButtonAutoFocus"
            text: "自动对焦"
            x: control.pBottonWidth * 0 + control.spacing * 1
            y: 0
            width: control.pBottonWidth
            height: parent.height
            buttonDefaultColor:   control.buttonDefaultColor
            buttonHoveredColor:   control.buttonHoveredColor
            buttonPressedColor:   control.buttonPressedColor
            textColor: control.textColor
        }
        MyButton3 {
            objectName: "ButtonUp"
            text: "手动上调"
            x: control.pBottonWidth * 1 + control.spacing * 2
            y: 0
            width: control.pBottonWidth
            height: parent.height
            buttonDefaultColor:   control.buttonDefaultColor
            buttonHoveredColor:   control.buttonHoveredColor
            buttonPressedColor:   control.buttonPressedColor
            textColor: control.textColor
        }
        MyButton3 {
            objectName: "ButtonDown"
            text: "手动下调"
            x: control.pBottonWidth * 2 + control.spacing * 3
            y: 0
            width: control.pBottonWidth
            height: parent.height
            buttonDefaultColor:   control.buttonDefaultColor
            buttonHoveredColor:   control.buttonHoveredColor
            buttonPressedColor:   control.buttonPressedColor
            textColor: control.textColor
        }
        MyButton3 {
            objectName: "ButtonStop"
            text: "停止"
            x: control.pBottonWidth * 3 + control.spacing * 4
            y: 0
            width: control.pBottonWidth
            height: parent.height
            buttonDefaultColor:   control.buttonDefaultColor
            buttonHoveredColor:   control.buttonHoveredColor
            buttonPressedColor:   control.buttonPressedColor
            textColor: control.textColor
        }
        MyButton3 {
            objectName: "ButtonEmeStop"
            text: "紧急停止"
            x: control.pBottonWidth * 4 + control.spacing * 5
            y: 0
            width: control.pBottonWidth
            height: parent.height
            buttonDefaultColor:   control.buttonDefaultColor
            buttonHoveredColor:   control.buttonHoveredColor
            buttonPressedColor:   control.buttonPressedColor
            textColor: control.textColor
        }
    }
}