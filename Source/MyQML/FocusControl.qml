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
                text: "自动对焦"
            }
            Button {
                text: "手动上调"
            }
            Button {
                text: "手动下调"
            }
            Button {
                text: "停止"
            }
            Button {
                text: "紧急停止"
            }
        }
        MySlider
        {
            width: parent.width
        }
    }
}