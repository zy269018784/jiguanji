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
    rowHeight: (control.height - 3 * rowSpacing) / 4

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
                text: "采样率"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelSampleRate"
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
                text: "滤波等级"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelFilterLevel"
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
                text: "标定系数"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelStandardCoefficient"
                height: parent.height
                y: 0
                x: 60
            }
        }
        Rectangle {
            height: control.rowHeight
            x: 4
            y: (control.rowHeight  + control.rowSpacing) * 3
            MyButton3 {
                objectName: "ButtonSaveSensorParams"
                text: "保存传感器参数"
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
