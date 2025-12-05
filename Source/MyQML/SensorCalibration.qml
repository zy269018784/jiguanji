import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts
Rectangle
{
    RowLayout {
        //anchors.horizontalCenter: parent.horizontalCenter
        Button {
            objectName: "ButtonZeroPointCalibration"
            text: "零点校准"
        }
        Button {
            objectName: "DistanceCalibration"
            text: "距离校准"
        }
        Button {
            objectName: "ButtonLinearCalibration"
            text: "线性度校准"
        }
    }
}