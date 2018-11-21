import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("My Components")

    Rectangle {
        id: box
        color: "blue"
        width: 200
        height: 200

        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id: boxCaption
            text: "Box"
            font.pointSize: 20
            anchors.centerIn: parent
        }
    }

    Image {
        id: cat
        source: "images/cat.png"
        anchors.bottom: box.top
        anchors.left: box.left
    }

    Image {
        id: cat2
        source: "images/cat2.png"
        anchors.bottom: box.bottom
        anchors.right: box.left
    }

    Image {
        id: dog
        source: "images/dog.png"
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        visible: false
    }

    Column {
        anchors.top: parent.top
        anchors.topMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 5

        spacing: 5

        MyButton {
            id: button1

            buttonText: "Where is the dog?"

            onPressed: dog.visible = true
            onReleased: dog.visible = false
            onClicked: console.log("Button clicked!")
        }

        MyButton {
            id: button2

            buttonText: "Change box color"

            onClicked: {
                box.color = Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
                console.log("Box color is: " + box.color)
            }
        }
    }
}
