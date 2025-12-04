import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    Label {
        id: lb1
        y: 0
        width: parent.width
        height: 30
        text: "焦距: --"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
    Label {
        id: lb2
        y: lb1.y + lb1.height
        width: parent.width
        height: 30
        text: "距离: 0.00"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
    Label {
        id: lb3
        y: lb2.y + lb2.height
        width: parent.width
        height: 30
        text: "工作状态:自动对焦中"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}