import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    ColumnLayout {
        Rectangle {
            y: 0
            height: 50
            Label {

                width: 60
                height: parent.height
                text: "最大速度"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelMaxSpeed"
                x: 60
            }
        }
        Rectangle {
            y: 50
            height: 50
            Label {

                width: 60
                height: parent.height
                text: "最小速度"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelMinSpeed"
                x: 60
            }
        }
        Rectangle {
            y: 100
            height: 50
            Label {
                width: 60
                height: parent.height
                text: "对焦精度"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelFocusPrecision"
                x: 60
            }
        }
        Rectangle {
            y: 150
            height: 50
            Label {
                width: 60
                height: parent.height
                text: "超时时间"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
            MyTextField {
                objectName: "LabelTimeout"
                x: 60
            }
        }
        Rectangle {
            Button {
                objectName: "ButtonSaveFocusParams"
                text: "保存对焦参数"
            }
        }
    }
}