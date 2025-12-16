import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

Rectangle
{
    id: control
    property real pLeftWidth
    property real pRightWidth
    property string pName
    property string pValue
    color: "#ff0000"
    Rectangle {
        x: 0
        y: 0
        width:  control.pLeftWidth
        height: control.height
        Label {
            anchors.fill: parent
            text: control.pName
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            background: Rectangle {
                anchors.fill: parent
                color: "#ff00ff"
            }
        }
    }
    Rectangle {
        x:  control.pLeftWidth
        y: 0
        width:  control.pRightWidth
        height: control.height
        Label {
            anchors.fill: parent
            text: control.pValue
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            background: Rectangle {
                anchors.fill: parent
                color: "#00AA00"
            }
        }
    }
}