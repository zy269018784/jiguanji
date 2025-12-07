import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    id: rect
    property real pTitleHeight
    property real pBottonWidth
    pBottonWidth: width / 2
    pTitleHeight: 30
    Rectangle {
        x: 0
        y: 0
        width:  rect.width
        height: rect.pTitleHeight
        Label {
            anchors.fill: parent
            text: "模式"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            background: Rectangle {
                anchors.fill: parent
                color: "#ff00ff"
            }
        }
    }
    Rectangle {
        x: 0
        y: rect.pTitleHeight
        width:  rect.width
        height: rect.height - rect.pTitleHeight
        color: "#ff00ff"
        RadioButton {
            objectName: "ButtonAutoMode"
            width:  rect.pBottonWidth
            height: parent.height
            x: rect.pBottonWidth * 0
            checked: true
            text: qsTr("自动")
        }
        RadioButton {
            objectName: "ButtonHandMode"
            width:  rect.pBottonWidth
            height: parent.height
            x: rect.pBottonWidth * 1
            text: qsTr("手动")
        }
    }
}