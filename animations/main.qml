import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: background.width
    height: background.height
    title: qsTr("Animations")

    Image {
        id: background
        source: "images/background.png"

        Image {
            id: pole
            source: "images/pole.png"

            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: wheel
            source: "images/pinwheel.png"

            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                wheel.rotation += 90
            }
        }
    }
}
