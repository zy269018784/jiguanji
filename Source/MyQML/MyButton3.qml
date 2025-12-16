import QtQuick
import QtQuick.Controls.Basic
Button
{
    id: control
    property color buttonDefaultColor
    property color buttonHoveredColor
    property color buttonPressedColor
    property color textColor
    buttonDefaultColor:   "#0099ff"
    buttonHoveredColor:   "#008deb"
    buttonPressedColor:   "#0080d6"
    textColor: "#ffffff"
    contentItem: Text {
        x:      0
        y:      0
        width:  parent.width
        height: parent.height
        text:   parent.text
        // font:   parent.font
        color:  control.textColor
        opacity: enabled ? 1.0 : 0.3
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment:   Text.AlignVCenter
       // elide: Text.ElideRight
    }
    background: Rectangle {
        width:  control.width
        height: control.height
        radius: 4
        color: control.hovered ?  (control.down ? control.buttonPressedColor : control.buttonHoveredColor) : control.buttonDefaultColor
    }
}