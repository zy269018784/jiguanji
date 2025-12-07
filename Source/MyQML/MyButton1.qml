import QtQuick
import QtQuick.Controls.Basic
Button
{
    contentItem: Text {
        x:      0
        y:      0
        width:  parent.width
        height: parent.height
        text:   parent.text
       // font:   parent.font
        color:  "#FFFFFF"
        opacity: enabled ? 1.0 : 0.3
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment:   Text.AlignVCenter
        elide: Text.ElideRight
    }
    background: Rectangle {
        width:  parent.width
        height: parent.height
        radius: parent.width / 2
        color: parent.hovered ?  (parent.down ? "#4B4C4F" : "#3D3F42") : "#2B2D30"
    }
}