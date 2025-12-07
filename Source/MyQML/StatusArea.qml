import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
	id: rect
	property real pLeftWidth 
	property real pRightWidth 
	property real pLabelHeight
	pLeftWidth:  100
	pRightWidth: width - pLeftWidth
	pLabelHeight: 30
	GridLayout
	{
		columns: 2
		columnSpacing: 0
		rowSpacing:    0
		Rectangle {
			width:  rect.pLeftWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "焦距"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#ff00ff"
				}
			}
		}
		Rectangle {
			width:  rect.pRightWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "100"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#00AA00"
				}
			}
		}
		Rectangle {
			width:  rect.pLeftWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "基准焦距"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#ff00ff"
				}
			}
		}
		Rectangle {
			width:  rect.pRightWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "100"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#00AA00"
				}
			}
		}
		Rectangle {
			width:  rect.pLeftWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "焦距偏差"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#ff00ff"
				}
			}
		}
		Rectangle {
			width:  rect.pRightWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "100"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#00AA00"
				}
			}
		}
		Rectangle {
			width:  rect.pLeftWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "电机当前位置"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#ff00ff"
				}
			}
		}
		Rectangle {
			width:  rect.pRightWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "100"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#00AA00"
				}
			}
		}
		Rectangle {
			width:  rect.pLeftWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "工作状态"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#ff00ff"
				}
			}
		}
		Rectangle {
			width:  rect.pRightWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "自动对焦中"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#00AA00"
				}
			}
		}	
		Rectangle {
			width:  rect.pLeftWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "工作模式"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#ff00ff"
				}
			}
		}
		Rectangle {
			width:  rect.pRightWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "自动对焦"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#00AA00"
				}
			}
		}	
		Rectangle {
			width:  rect.pLeftWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "对焦状态"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#ff00ff"
				}
			}
		}
		Rectangle {
			width:  rect.pRightWidth
			height: rect.pLabelHeight
			Label {
				anchors.fill: parent
				text: "未对焦/对焦中/对焦完成/对焦失败"
				verticalAlignment: Text.AlignVCenter
				horizontalAlignment: Text.AlignLeft
				background: Rectangle {
					anchors.fill: parent
					color: "#00AA00"
				}
			}
		}			
	}
}