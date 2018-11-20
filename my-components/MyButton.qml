import QtQuick 2.9

Rectangle {
    id: root

    property alias buttonText: caption.text

    signal clicked
    signal pressed
    signal released

    color: "green"
    radius: 30

    width: caption.width + 10
    height: caption.height + 10

    Text {
        id: caption
        text: "Button"
        font.pointSize: 10
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
        onPressed: root.pressed()
        onReleased: root.released()
    }
}
