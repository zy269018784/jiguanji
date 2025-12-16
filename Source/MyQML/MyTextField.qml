import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
TextField {
    id: control
    placeholderText: qsTr("Enter description")

    background: Rectangle {
        implicitWidth: 200
        implicitHeight: 40
        color: control.enabled ? "transparent" : "#353637"
        border.color: control.activeFocus  ? "#008deb" :  "#ebebeb"
    }
}