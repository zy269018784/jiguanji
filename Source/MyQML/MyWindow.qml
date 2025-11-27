import QtQuick
import QtQuick.Controls.Basic

Window {
	id: window
    width: 	800
    height: 600
    visible: true
    title: qsTr("激光机")
	
	Button {
		x: 0
		y: 0
		width:  50
		height: 50
		text: qsTr("手动")
	}
	
	Button {
		x: 60
		y: 0
		width:  50
		height: 50
		text: qsTr("自动")
	}
	
	Label {
		x: 0
		y: 60
		width:  100
		height: 50
		text: "电机方向"
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: 		Text.AlignVCenter
		background: Rectangle
		{
			color: "#e6e6e6"
		}
	}
	
	CheckBox {
		x: 110
		y: 60
		width:  100
		height: 50
        checked: true
        text: qsTr("正")
    }
	
	Button {
		x: 220
		y: 60
		width: 50
		height: 50
		text: qsTr("上升")
	}
	
	Button {
		x: 280
		y: 60
		width:  50
		height: 50
		text: qsTr("下降")
	}
	
	Button {
		x: 340
		y: 60
		width:  50
		height: 50
		text: qsTr("停止")
	}
	
	Label {
		x: 0
		y: 120
		width:  100
		height: 50
		text: "焦点高度"
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: 		Text.AlignVCenter
		background: Rectangle
		{
			color: "#e6e6e6"
		}
	}
	
	Label {
		x: 110
		y: 120
		width:  100
		height: 50
		text: "自动间隔"
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: 		Text.AlignVCenter
		background: Rectangle
		{
			color: "#e6e6e6"
		}
	}
	
	Label {
		x: 0
		y: 180
		width:  100
		height: 50
		text: "高度"
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: 		Text.AlignVCenter
		background: Rectangle
		{
			color: "#e6e6e6"
		}
	}
	
	ProgressBar {
		id: control
		value: 0.5
		padding: 2
		x: 0
		y: 300
		background: Rectangle {
			implicitWidth: 600
			implicitHeight: 36
			color: "#e6e6e6"
			radius: 18
		}

		contentItem: Item {
			implicitWidth: 600
			implicitHeight: 24

			// Progress indicator for determinate state.
			Rectangle {
				width: control.visualPosition * parent.width
				height: parent.height
				radius: 12
				//color: "#17a81a"
				color: "#FF00FF"
				visible: !control.indeterminate
			}
			
			Rectangle {
				x: control.visualPosition * parent.width - 3
				y: 0
				width:  parent.height
				height: parent.height
				radius: parent.height / 2
				color: "#00FF00"
			}
		}
	}
}