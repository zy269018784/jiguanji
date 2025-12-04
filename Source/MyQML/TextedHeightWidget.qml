import QtQuick
import QtQuick.Shapes
import QtQuick.Controls.Basic
Rectangle {
    id: rect
    property real from: 0.0
    property real to:   1.0
    property real value: 0.0
    color: "#00ff0000"
    function remap(x, x1, x2, y1, y2) {
        if (Math.abs(x2 - x1) < 0.000001) return y1
        return y1 + (y2 - y1) * ((x - x1) / (x2 - x1))
    }
    onFromChanged: {
        fromText.text = rect.from.toString()
    }
    onToChanged: {
        toText.text = rect.to.toString()
    }
    onValueChanged: {
        valueText.text = rect.value.toString()
        currentValueRect.y = remap(value, from, to, height - 40, 0)
    }
    HeightWidget {
        y: 20
        width: rect.width / 2
        height: rect.height - 40
        from: rect.from
        to: rect.to
        value: rect.value
    }
    Rectangle {
        x: rect.width / 2
        y: 0
        width: rect.width / 2
        height: 40
        Text {
            id: toText
            anchors.fill: parent
            text: "1.0"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
        }
    }
    Rectangle {
        x: rect.width / 2
        y: rect.height - 40
        width: rect.width / 2
        height: 40
        Text {
            id: fromText
            anchors.fill: parent
            text: "0.0"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
        }
    }

    Rectangle {
        id: currentValueRect
        x: rect.width / 2
        y: rect.height - 40
        width: rect.width / 2
        height: 40
        color: "#ff0000"
        Text {
            id: valueText
            anchors.fill: parent
            text: "0.0"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
        }
    }
}