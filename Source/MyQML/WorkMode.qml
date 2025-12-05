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
            objectName: "ButtonAutoMode"
            checked: true
            text: qsTr("自动")
        }
        RadioButton {
            objectName: "ButtonHandMode"
            text: qsTr("手动")
        }
    }
}