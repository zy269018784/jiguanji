import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    id: rect
    property real pTitleHeight
    property real pBottonWidth
    pBottonWidth: width / 3
    pTitleHeight: 30
    Rectangle {
        x: 0
        y: 0
        width:  rect.width
        height: rect.pTitleHeight
        Label {
            anchors.fill: parent
            text: "快速操作"
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
        Button {
            objectName: "ButtonSetZero"
            width:  rect.pBottonWidth
            height: parent.height
            x: rect.pBottonWidth * 0
            text: "一键归零"
        }
        Button {
            objectName: "ButtonSetPos1"
            width:  rect.pBottonWidth
            height: parent.height
            x: rect.pBottonWidth * 1
            text: "常用位置1"
        }
        Button {
            objectName: "ButtonSetPos2"
            width:  rect.pBottonWidth
            height: parent.height
            x: rect.pBottonWidth * 2
            text: "常用位置2"
        }
    }
}