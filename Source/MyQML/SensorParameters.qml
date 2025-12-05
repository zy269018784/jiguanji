import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    ColumnLayout {
        RowLayout {
            Label {
                text: "采样率:"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
        }
        RowLayout {
            Label {
                text: "滤波等级:"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
        }
        RowLayout {
            Label {
                text: "标准系数:"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
        }
        RowLayout {
            Button {
                objectName: "ButtonSaveSensorParams"
                text: "保存传感器参数"
            }
        }
    }
}