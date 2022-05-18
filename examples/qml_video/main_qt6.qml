import QtQuick 2.5
import QtMultimedia 6.2

Item {
    VideoOutput {
        id: _video
        anchors.fill: parent
        objectName: "videoOutput"
    }
    DropArea {
        anchors.fill: parent
        onDropped: function(obj) {
            console.log("DOOOOOO", obj.urls[0].toString().replace("file:///", ""))
            p.setSource(obj.urls[0].toString().replace("file://", ""));
            p.play()
        }
    }
}
