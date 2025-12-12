import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    id: rect
    property color color
    color: "#FFFFFF"
    ColumnLayout {
        Rectangle {
            y: 0
            height: 50
            Label {
                width: 60
                height: parent.height
                text: "串口号"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
                color: rect.color
            }
            MyTextField {
                objectName: "LabelPort"
                x: 60
            }
        }
        Rectangle {
            y: 50
            height: 50
            Label {
                width: 60
                height: parent.height
                text: "波特率"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
                color: rect.color
            }
            MyTextField {
                objectName: "LabelBaudRate"
                x: 60
            }
        }
        Rectangle {
            y: 100
            height: 50
            Label {
                width: 60
                height: parent.height
                text: "数据位"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
                color: rect.color
            }
            MyTextField {
                objectName: "LabelDataBit"
                x: 60
            }
        }
        Rectangle {
            y: 150
            height: 50
            Label {
                width: 60
                height: parent.height
                text: "校验位"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
                color: rect.color
            }
            MyTextField {
                objectName: "LabelParityBit"
                x: 60
            }
        }
        Rectangle {
            y: 150
            height: 50
            Label {
                width: 60
                height: parent.height
                text: "停止位"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
                color: rect.color
            }
            MyTextField {
                objectName: "LabelStopBit"
                x: 60
            }
        }
        RowLayout {
            Button {
                objectName: "ButtonSaveCommParams"
                text: "保存通信参数"
            }
        }
    }
}