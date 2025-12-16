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
    rowHeight: (control.height - 5 * rowSpacing) / 6

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
                text: "串口号"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelPort"
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
                text: "波特率"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelBaudRate"
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
                text: "数据位"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelDataBit"
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
                text: "校验位"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelParityBit"
                height: parent.height
                y: 0
                x: 60
            }
        }
        Rectangle {
            height: control.rowHeight
            x: 4
            y: (control.rowHeight  + control.rowSpacing) * 4
            Label {
                width: 60 + 4
                height: parent.height
                text: "停止位"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelStopBit"
                height: parent.height
                y: 0
                x: 60
            }
        }
        Rectangle {
            height: control.rowHeight
            x: 4
            y: (control.rowHeight  + control.rowSpacing) * 5
            MyButton3 {
                objectName: "ButtonSaveCommParams"
                text: "保存通信参数"
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
