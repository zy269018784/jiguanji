import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    ColumnLayout {
        RowLayout {
            Label {
                text: "串口号"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
        }
        RowLayout {
            Label {
                text: "波特率"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
        }
        RowLayout {
            Label {
                text: "数据位"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
        }
        RowLayout {
            Label {
                text: "校验位"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
        }
        RowLayout {
            Label {
                text: "停止位"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
        }
        RowLayout {
            Button {
                text: "保存通信参数"
            }
        }
    }
}