import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    ColumnLayout
    {
        RowLayout {
            //anchors.horizontalCenter: parent.horizontalCenter
            Button {
                objectName: "ButtonAutoFocus"
                text: "自动对焦"
            }
            Button {
                objectName: "ButtonUp"
                text: "手动上调"
            }
            Button {
                objectName: "ButtonDown"
                text: "手动下调"
            }
            Button {
                objectName: "ButtonStop"
                text: "停止"
            }
            Button {
                objectName: "ButtonEMStop"
                text: "紧急停止"
            }
        }
        MySlider
        {
            width: parent.width
        }
    }
}