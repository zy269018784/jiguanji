import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    id: control
    property real pTitleHeight
    property real pBottonWidth
    property real spacing
    property color buttonDefaultColor
    property color buttonHoveredColor
    property color buttonPressedColor
    property color textColor
    pBottonWidth: (width - 2 * border.width - 4 * spacing) / 3
    pTitleHeight: 30
    spacing: 4
    color:  "#f5f5f5"
    border.width: 2
    border.color: "#ebebeb"
    Rectangle {
        x: control.border.width
        y: control.border.width
        width: control.width - 2 * control.border.width
        height: control.pTitleHeight
        Label {
            anchors.fill: parent
            text: "传感器校准"
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
            objectName: "ButtonZeroPointCalibration"
            text: "零点校准"
            x: control.pBottonWidth * 0 + control.spacing * 1
            y: 0
            width: control.pBottonWidth
            height: parent.height
        }
        MyButton3 {
            objectName: "DistanceCalibration"
            text: "距离校准"
            x: control.pBottonWidth * 1 + control.spacing * 2
            y: 0
            width: control.pBottonWidth
            height: parent.height
        }
        MyButton3 {
            objectName: "ButtonLinearCalibration"
            text: "线性度校准"
            x: control.pBottonWidth * 2 + control.spacing * 3
            y: 0
            width: control.pBottonWidth
            height: parent.height
        }
    }
}