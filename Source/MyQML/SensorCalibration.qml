import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    RowLayout {
        //anchors.horizontalCenter: parent.horizontalCenter
        Button {
            text: "零点校准"
        }
        Button {
            text: "距离校准"
        }
        Button {
            text: "线性度校准"
        }
    }
}