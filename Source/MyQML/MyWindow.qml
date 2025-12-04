import QtQuick
import QtQuick.Controls.Basic

Window {
	id: window
    width: 	800
    height: 600
    visible: true
    title: qsTr("激光机")
    color: "#000000"
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
        id: controlProgressBar
        x: 150
        y: 0
        width: 200
        height: parent.height
        to: 100
        //from: 0
        value: 70
    }

}