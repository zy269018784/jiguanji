import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    id: rect
    property real pTitleHeight
    property real pBottonWidth
    pBottonWidth: (width - 2 * border.width) / 3
    pTitleHeight: 30
    color: "#00ff00"
    border.width: 2
    border.color: "#00ff00"
    Rectangle {
        x: rect.border.width
        y: rect.border.width
        width: rect.width - 2 * rect.border.width
        height: rect.pTitleHeight
        Label {
            anchors.fill: parent
            text: "快速操作"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
    Rectangle {
        x: rect.border.width
        y: rect.border.width + rect.pTitleHeight
        width:  rect.width - 2 * rect.border.width
        height: rect.height - rect.pTitleHeight- 2 * rect.border.width
        color: "#ff00ff"
        Button {
            id: control
            objectName: "ButtonAutoFocus"
            text: "一键归零"
            x: 0
            y: 0
            width: rect.pBottonWidth
            height: parent.height
            contentItem: Text {
                x:      0
                y:      0
                width:  parent.width
                height: parent.height
                text:   parent.text
                font:   parent.font
                color:  parent.down ? "#17a81a" : "#21be2b"
                opacity: enabled ? 1.0 : 0.3
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
        }
        Button {
            objectName: "ButtonAutoFocus"
            text: "常用位置1"
            x: rect.pBottonWidth
            y: 0
            width: rect.pBottonWidth
            height: parent.height
            contentItem: Text {
                x:      0
                y:      0
                width:  parent.width
                height: parent.height
                text:   parent.text
                font:   parent.font
                color:  parent.down ? "#17a81a" : "#21be2b"
                opacity: enabled ? 1.0 : 0.3
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
        }
        Button {
            objectName: "ButtonAutoFocus"
            text: "常用位置2"
            x: rect.pBottonWidth * 2
            y: 0
            width: rect.pBottonWidth
            height: parent.height
            contentItem: Text {
                x:      0
                y:      0
                width:  parent.width
                height: parent.height
                text:   parent.text
                font:   parent.font
                color:  parent.down ? "#17a81a" : "#21be2b"
                opacity: enabled ? 1.0 : 0.3
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
        }
    }
}