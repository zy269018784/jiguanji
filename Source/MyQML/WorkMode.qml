import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    id: control
    property real pTitleHeight
    property real pBottonWidth
    property real spacing
    pTitleHeight: 30
    pBottonWidth: (width - 2 * border.width - 3 * spacing) / 2
    spacing: 4
    color: "#f5f5f5"
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
            text: "模式"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
    Rectangle {
        x: control.border.width
        y: control.pTitleHeight- 2 * control.border.width - control.spacing
        width:  control.width - 2 * control.border.width
        height: control.height - control.pTitleHeight
        color:  control.color
        RadioButton {
            objectName: "ButtonAutoMode"
            width:  control.pBottonWidth
            height: parent.height
            x: control.pBottonWidth * 0  + control.spacing * 1
            checked: true
            text: qsTr("自动")
        }
        RadioButton {
            objectName: "ButtonHandMode"
            width:  control.pBottonWidth
            height: parent.height
            x: control.pBottonWidth * 1  + control.spacing * 2
            text: qsTr("手动")
        }
    }
}