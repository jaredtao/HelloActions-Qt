import QtQuick 2.9
import QtQuick.Window 2.9
import QtQuick.Controls 2.9
import QtQml 2.9
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("HelloActions-Qt")
    Text {
        text: "Hello " + Qt.platform.os
        anchors.centerIn: parent
    }
}
