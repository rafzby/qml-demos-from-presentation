import QtQuick 2.9

Rectangle {
    id: root
    width: 170
    height: 500

    color: "black"

    Column {
        spacing: 10
        anchors.centerIn: parent

        Rectangle {
            id: red
            color: "red"
            width: 150
            height: 150
            radius: 100
            opacity: 0.1

            MouseArea {
                anchors.fill: parent
                onClicked: root.state = "RED"
            }
        }

        Rectangle {
            id: yellow
            color: "yellow"
            width: 150
            height: 150
            radius: 100
            opacity: 0.1

            MouseArea {
                anchors.fill: parent
                onClicked: root.state = "YELLOW"
            }
        }

        Rectangle {
            id: green
            color: "green"
            width: 150
            height: 150
            radius: 100
            opacity: 0.1

            MouseArea {
                anchors.fill: parent
                onClicked: root.state = "GREEN"
            }
        }
    }

    states: [
        State {
            name: "RED"
            PropertyChanges {
                target: red
                opacity: 1
            }
        },

        State {
            name: "YELLOW"
            PropertyChanges {
                target: yellow
                opacity: 1
            }
        },

        State {
            name: "GREEN"
            PropertyChanges {
                target: green
                opacity: 1
            }
        }
    ]
}

