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
        text: "焦距: 100"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
    Label {
        id: lb2
        y: lb1.y + lb1.height
        width: parent.width
        height: 30
        text: "基准焦距: 100"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
    Label {
        id: lb3
        y: lb2.y + lb2.height
        width: parent.width
        height: 30
        text: "焦距偏差: 100"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
    Label {
        id: lb4
        y: lb3.y + lb3.height
        width: parent.width
        height: 30
        text: "电机当前位置: 100"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
    Label {
        id: lb5
        y: lb4.y + lb4.height
        width: parent.width
        height: 30
        text: "工作状态: 自动对焦中"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
    Label {
        id: lb6
        y: lb5.y + lb5.height
        width: parent.width
        height: 30
        text: "工作模式: 自动对焦"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
    Label {
        id: lb7
        y: lb6.y + lb6.height
        width: parent.width
        height: 30
        text: "对焦状态: 未对焦/对焦中/对焦完成/对焦失败"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
}