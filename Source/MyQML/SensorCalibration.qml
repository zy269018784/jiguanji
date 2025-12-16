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
            text: "传感器校准"
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
        MyButton1 {
            id: control
            objectName: "ButtonZeroPointCalibration"
            text: "零点校准"
            x: 0
            y: 0
            width: rect.pBottonWidth
            height: parent.height
        }
        MyButton1 {
            objectName: "DistanceCalibration"
            text: "距离校准"
            x: rect.pBottonWidth
            y: 0
            width: rect.pBottonWidth
            height: parent.height
        }
        MyButton1 {
            objectName: "ButtonLinearCalibration"
            text: "线性度校准"
            x: rect.pBottonWidth * 2
            y: 0
            width: rect.pBottonWidth
            height: parent.height
        }
    }
}