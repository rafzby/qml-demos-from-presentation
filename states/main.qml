import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: trafficLight.width
    height: trafficLight.height
    title: qsTr("States")


    TrafficLight {
        id: trafficLight
    }
}
