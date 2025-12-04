import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    RowLayout {
        //anchors.horizontalCenter: parent.horizontalCenter
        Label {
            text: "模式:"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignVCenter
        }
        RadioButton {
            checked: true
            text: qsTr("自动")
        }
        RadioButton {
            text: qsTr("手动")
        }
    }
}