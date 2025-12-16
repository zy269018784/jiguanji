import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

Rectangle
{
    id: control
    property real rowHeight
    property real rowSpacing
    property color color
    rowSpacing: 2
    rowHeight: (control.height - 4 * rowSpacing) / 5

    color: "#FF0000"
    ColumnLayout
    {
        spacing: 2
        height: parent.height
        Rectangle {
            width:  control.width
            height: control.rowHeight
            x: 4
            y: control.rowHeight * 0
            Label {
                width: 60
                height: parent.height
                text: "最大速度"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelMaxSpeed"
                height: parent.height
                y: 0
                x: 60
            }
        }
        Rectangle {
            width:  control.width
            height: control.rowHeight
            x: 4
            y: (control.rowHeight  + control.rowSpacing) * 1
            Label {
                width: 60 + 4
                height: parent.height
                text: "最小速度"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelMinSpeed"
                height: parent.height
                y: 0
                x: 60
            }
        }
        Rectangle {
            width:  control.width
            height: control.rowHeight
            x: 4
            y: (control.rowHeight  + control.rowSpacing) * 2
            Label {
                width: 60 + 4
                height: parent.height
                text: "对焦精度"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelFocusPrecision"
                height: parent.height
                y: 0
                x: 60
            }
        }
        Rectangle {
            height: control.rowHeight
            x: 4
            y: (control.rowHeight  + control.rowSpacing) * 3
            Label {
                width: 60 + 4
                height: parent.height
                text: "超时时间"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelTimeout"
                height: parent.height
                y: 0
                x: 60
            }
        }
        Rectangle {
            height: control.rowHeight
            x: 4
            y: (control.rowHeight  + control.rowSpacing) * 4
            MyButton3 {
                objectName: "ButtonSaveFocusParams"
                text: "保存对焦参数"
                buttonDefaultColor:   "#0099ff"
                buttonHoveredColor:   "#008deb"
                buttonPressedColor:   "#0080d6"
                textColor: "#ffffff"
                //width: parent.width
                height: parent.height
            }
        }
    }
}
