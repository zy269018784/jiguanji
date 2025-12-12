import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    id: rect
    property color color
    color: "#Ff0000"
    ColumnLayout {
        Rectangle {
            y: 0
            height: 50
            Label {
                text: "采样率"
                width: 60
                height: parent.height
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
                color: rect.color
            }
            MyTextField {
                objectName: "LabelSampleRate"
                x: 60
            }
        }
        Rectangle {
            y: 50
            height: 50
            Label {
                text: "滤波等级"
                width: 60
                height: parent.height
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
                color: rect.color
            }
            MyTextField {
                objectName: "LabelFilterLevel"
                x: 60
            }
        }
        Rectangle {
            y: 100
            height: 50
            Label {
                text: "标定系数"
                width: 60
                height: parent.height
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
                color: rect.color
            }
            MyTextField {
                objectName: "LabelStandardCoefficient"
                x: 60
            }
        }
        Rectangle {
            y: 150
            Button {
                objectName: "ButtonSaveSensorParams"
                text: "保存传感器参数"
            }
        }
    }
}