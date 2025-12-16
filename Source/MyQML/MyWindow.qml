import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Window {
    id: window
    property color buttonDefaultColor
    property color buttonHoveredColor
    property color buttonPressedColor
    property color textColor
    buttonDefaultColor:   "#0099ff"
    buttonHoveredColor:   "#008deb"
    buttonPressedColor:   "#0080d6"
    textColor: "#ffffff"
    width: 	800
    height: 600
    visible: true
    title: qsTr("激光机")
    color:  "#f5f5f5"
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
    Rectangle {
        x: 0
        y: 0
        width: 350
      //  spacing: 2

        WorkMode {
            id: controlWorkMode
            color: "#00000000"
            width: parent.width
            height: 70
            x: 0
            y: 0
            pTitleHeight: 40
        }

        FocusControl {
            id: controlFocusControl
            buttonDefaultColor:   window.buttonDefaultColor
            buttonHoveredColor:   window.buttonHoveredColor
            buttonPressedColor:   window.buttonPressedColor
            textColor: window.textColor
            width: parent.width
            height: 70
            x: 0
            y: controlWorkMode.y + controlWorkMode.height + 2
            pTitleHeight: 30
        }

        QuickOperations {
            id: controlQuickOperations
            buttonDefaultColor:   window.buttonDefaultColor
            buttonHoveredColor:   window.buttonHoveredColor
            buttonPressedColor:   window.buttonPressedColor
            textColor: window.textColor
            width: parent.width
            height: 70
            x: 0
            y: controlFocusControl.y + controlFocusControl.height + 2
            pTitleHeight: 30
        }

        SensorCalibration {
            id: controlSensorCalibration
            buttonDefaultColor:   window.buttonDefaultColor
            buttonHoveredColor:   window.buttonHoveredColor
            buttonPressedColor:   window.buttonPressedColor
            textColor: window.textColor
            width: parent.width
            height: 70
            x: 0
            y: controlQuickOperations.y + controlQuickOperations.height + 2
            pTitleHeight: 30
        }

        TabWidget {
            x: 0
            //y: 0
            width: parent.width
            height: window.height - (controlSensorCalibration.y + controlSensorCalibration.height + 2)
            y:  (controlSensorCalibration.y + controlSensorCalibration.height + 2)
            pTitleHeight: 40
            spacing: 4
            model: ["对焦参数", "通信参数", "传感器参数" ]
        }
    }

    Button {
        id: control
        x: 500
        y: 0
      //  anchors.left: parent.left
       // anchors.bottom: parent.bottom
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
        x: 350
        y: 0
        width:  window.width - 350
        spacing: 0

        StatusArea {
            color: "#00000000"
            width: parent.width
            height: 400
        }
        /*
        SystemLog {
            color: "#FFFFFF00"
            width: parent.width
            height: 300
        }
        */
    }
}