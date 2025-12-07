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
        font:   parent.font
        color:  parent.down ? "#17a81a" : "#21be2b"
        opacity: enabled ? 1.0 : 0.3
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment:   Text.AlignVCenter
        elide: Text.ElideRight
    }
}