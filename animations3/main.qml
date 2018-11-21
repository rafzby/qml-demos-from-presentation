import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Animations 3")

    Rectangle {
        id: box
        color: "green"
        width: 100
        height: 100

        Behavior on x {
            SpringAnimation {
                spring: 2
                damping: 0.2
            }
        }

        Behavior on y {
            SpringAnimation {
                spring: 2
                damping: 0.2
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            box.x = mouseX - box.width/2
            box.y = mouseY - box.height/2
        }
    }
}
