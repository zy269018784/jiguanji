import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    ColumnLayout {
        RowLayout {
            Label {
                text: "最大速度"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
        }
        RowLayout {
            Label {
                text: "最小速度"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
        }
        RowLayout {
            Label {
                text: "对焦精度"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
        }
        RowLayout {
            Label {
                text: "超时时间"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignVCenter
            }
        }
        RowLayout {
            Button {
                objectName: "ButtonSaveFocusParams"
                text: "保存对焦参数"
            }
        }
    }
}