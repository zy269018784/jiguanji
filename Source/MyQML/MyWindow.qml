import QtQuick
import QtQuick.Controls.Basic

Window {
	id: window
    width: 	800
    height: 600
    visible: true
    title: qsTr("激光机")
	
	Rectangle {
		x: 0
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
	
	Rectangle {
		x: 200
		y: 0
		width: 200
		height: 200
		border.color: "#00ffff"
		
		Button {
			x: 0
			y: 0
			width: 100
			height: 50
			text: qsTr("故障复位")
		}
	}
	
	Rectangle {
		x: 400
		y: 0
		width: 200
		height: parent.height
		border.color: "#0000ff"
		
		Label {
			x: 0
			y: 0
			width:  100
			height: 50
			text: "测距值"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		Label {
			x: 100
			y: 0
			width:  100
			height: 50
			text: "100"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		Label {
			x: 0
			y: 50
			width:  100
			height: 50
			text: "基准焦距"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		Label {
			x: 100
			y: 50
			width:  100
			height: 50
			text: "100"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}		
		Label {
			x: 0
			y: 100
			width:  100
			height: 50
			text: "焦距偏差"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		Label {
			x: 100
			y: 100
			width:  100
			height: 50
			text: "100"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}	
		Label {
			x: 0
			y: 150
			width:  100
			height: 50
			text: "电机当前位置"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		Label {
			x: 100
			y: 150
			width:  100
			height: 50
			text: "100"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		Label {
			x: 0
			y: 200
			width:  100
			height: 50
			text: "工作模式"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		Label {
			x: 100
			y: 200
			width:  100
			height: 50
			text: "自动对焦"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}	
		Label {
			x: 0
			y: 250
			width:  100
			height: 50
			text: "对焦状态"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		Label {
			x: 100
			y: 250
			width:  100
			height: 50
			text: "未对焦"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}	
		Label {
			x: 0
			y: 300
			width:  100
			height: 50
			text: "故障信息"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		Label {
			x: 100
			y: 300
			width:  100
			height: 50
			text: "100"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}			
	}
	Rectangle {
		x: 600
		y: 0
		width: 200
		height: parent.height
		border.color: "#0000ff"
		
		Label {
			x: 0
			y: 0
			width:  100
			height: 50
			text: "基准焦距"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		TextField {
			id: controlTF1
			x: 100
			y: 0
			width:  100
			height: 50
			placeholderText: qsTr("")
			background: Rectangle {
				color: controlTF1.enabled ? "transparent" : "#353637"
				border.color: controlTF1.enabled ? "#21be2b" : "transparent"
			}
		}

		Label {
			x: 0
			y: 50
			width:  100
			height: 50
			text: "对焦精度阈值"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		TextField {
			id: controlTF2
			x: 100
			y: 50
			width:  100
			height: 50
			placeholderText: qsTr("")
			background: Rectangle {
				color: controlTF2.enabled ? "transparent" : "#353637"
				border.color: controlTF2.enabled ? "#21be2b" : "transparent"
			}
		}	
		Label {
			x: 0
			y: 100
			width:  100
			height: 50
			text: "测距采样频率"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		TextField {
			id: controlTF3
			x: 100
			y: 100
			width:  100
			height: 50
			placeholderText: qsTr("")
			background: Rectangle {
				color: controlTF3.enabled ? "transparent" : "#353637"
				border.color: controlTF3.enabled ? "#21be2b" : "transparent"
			}
		}
		Label {
			x: 0
			y: 150
			width:  100
			height: 50
			text: "步进电机细分"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		TextField {
			id: controlTF4
			x: 100
			y: 150
			width:  100
			height: 50
			placeholderText: qsTr("")
			background: Rectangle {
				color: controlTF4.enabled ? "transparent" : "#353637"
				border.color: controlTF4.enabled ? "#21be2b" : "transparent"
			}
		}
		Label {
			x: 0
			y: 200
			width:  100
			height: 50
			text: "转速"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		TextField {
			id: controlTF5
			x: 100
			y: 200
			width:  100
			height: 50
			placeholderText: qsTr("")
			background: Rectangle {
				color: controlTF5.enabled ? "transparent" : "#353637"
				border.color: controlTF5.enabled ? "#21be2b" : "transparent"
			}
		}
		Label {
			x: 0
			y: 250
			width:  100
			height: 50
			text: "加速度"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		TextField {
			id: controlTF6
			x: 100
			y: 250
			width:  100
			height: 50
			placeholderText: qsTr("")
			background: Rectangle {
				color: controlTF6.enabled ? "transparent" : "#353637"
				border.color: controlTF6.enabled ? "#21be2b" : "transparent"
			}
		}
		Label {
			x: 0
			y: 300
			width:  100
			height: 50
			text: "电机行程极限"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		TextField {
			id: controlTF7
			x: 100
			y: 300
			width:  100
			height: 50
			placeholderText: qsTr("")
			background: Rectangle {
				color: controlTF7.enabled ? "transparent" : "#353637"
				border.color: controlTF7.enabled ? "#21be2b" : "transparent"
			}
		}
		Label {
			x: 0
			y: 350
			width:  100
			height: 50
			text: "电机行程极限"
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: 		Text.AlignVCenter
			background: Rectangle
			{
				color: "#e6e6e6"
			}
		}
		TextField {
			id: controlTF8
			x: 100
			y: 350
			width:  100
			height: 50
			placeholderText: qsTr("")
			background: Rectangle {
				color: controlTF8.enabled ? "transparent" : "#353637"
				border.color: controlTF8.enabled ? "#21be2b" : "transparent"
			}
		}		
	}	
	
	ProgressBar {
		id: controlProgressBar
		from: 0
		to: 1000
		value: 70
		padding: 2
		x: 150
		y: parent.height - 50
		width: parent.height
		height: 50
		transformOrigin: Item.BottomLeft
		rotation: -90
		background: Rectangle {
			color: "#e6e6e6"
			radius: 18
		}

		contentItem: Item {
			implicitWidth: 600
			implicitHeight: 24

			// Progress indicator for determinate state.
			Rectangle {
				width: controlProgressBar.visualPosition * parent.width
				height: parent.height
				radius: 12
				//color: "#17a81a"
				color: "#FF00FF"
				visible: !controlProgressBar.indeterminate
			}
			
			Rectangle {
				x: controlProgressBar.visualPosition * parent.width - 3
				y: 0
				width:  parent.height
				height: parent.height
				radius: parent.height / 2
				color: "#00FF00"
			}
		}
	}

}