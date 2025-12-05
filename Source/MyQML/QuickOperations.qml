import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    RowLayout {
        //anchors.horizontalCenter: parent.horizontalCenter
        Button {
            objectName: "ButtonSetZero"
            text: "一键归零"
        }
        Button {
            objectName: "ButtonSetPos1"
            text: "常用位置1"
        }
        Button {
            objectName: "ButtonSetPos2"
            text: "常用位置2"
        }
    }
}