import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Window {
    id: window

    width: 	800
    height: 600
    visible: true
    title: qsTr("激光机")
    color: "#F0F0F0"
    Rectangle {
        visible: false
        x: parent.width - 600
        y: 0
        width: 200
        height: 200
        border.color: "#00ff00"

        Button {
            x: 0
            y: 0
            width: 50
            height: 50
            text: qsTr("上升")
            autoRepeat: true
            autoRepeatDelay: 10
            onClicked: {
                controlProgressBar.value++;
                //if (controlProgressBar.value < controlProgressBar.t)
            }
        }

        Button {
            x: 0
            y: 60
            width: 50
            height: 50
            text: qsTr("急停")
        }

        Button {
            x: 0
            y: 150
            width: 50
            height: 50
            text: qsTr("下降")
            autoRepeat: true
            autoRepeatDelay: 10
            onClicked: {
                controlProgressBar.value--;
            }
        }
    }


    TextedHeightWidget
    {
        visible: false
        id: controlProgressBar
        x: window.width - 600
        y: 0
        width: 200
        height: parent.height
        to: 100
        //from: 0
        value: 70
    }
    ColumnLayout {
        x: 0
        y: 0
        width: parent.width / 2
        spacing: 10

        WorkMode {
            color: "#00000000"
            width: parent.width
            height: 150
            pTitleHeight: 40
        }

        FocusControl {
            width: parent.width
            height: 100
            pTitleHeight: 30
        }

        QuickOperations {
            color: "#00000000"
            width: parent.width
            height: 100
            pTitleHeight: 30
        }

        SensorCalibration {
            color: "#00000000"
            width: parent.width
            height: 100
            pTitleHeight: 30
        }

        TabWidget {
            color: "#00000000"
            width: parent.width
            height: 400
            model: ["对焦参数", "通信参数", "传感器参数" ]
        }


    }

    Button {
        id: control
        x: 0
        y: 0
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        width:  100
        height: 100
        objectName: "ButtonReset"
        text: "故障服复位"
        contentItem: Text {
            text: control.text
            font: control.font
            opacity: enabled ? 1.0 : 0.3
            color: control.down ? "#FF0000" : "#FFFFFF"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
        background: Rectangle {
            width: parent.width
            height: parent.height
            radius: parent.width / 2
            border.color: control.down ? "#FF0000" : "#00FF00"
            border.width: 1
            color: control.down ? "#FFFFFF" : "#FF0000"
        }
    }
    ColumnLayout {
        x: window.width - 600
        y: 0
        width: 600
        spacing: 0

        StatusArea {
            color: "#00000000"
            width: parent.width
            height: 400
        }
        SystemLog {
            color: "#FFFFFF00"
            width: parent.width
            height: 300
        }
    }
}