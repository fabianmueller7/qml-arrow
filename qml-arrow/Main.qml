import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import Animator

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Arrow")
    color: "#000000"

    Animator {
        id: animator
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 3

        Item {
            id: spacer
            Layout.fillWidth: true
            Layout.fillHeight: true

            AnimatedImage {
                id: arrow
                anchors.centerIn: parent
                anchors.fill: parent
                source: "qrc:/resources/images/scrolling-arrow.gif"

            }
        }

        RowLayout {
            spacing: 10
            Button {
                text: "left"
                Layout.fillWidth: true
                onClicked: {
                    arrow.rotation = 180;
                }
            }

            Button {
                text: "center"
                Layout.fillWidth: true
                onClicked: {
                    arrow.rotation = 270;
                }
            }

            Button {
                text: "right"
                Layout.fillWidth: true
                onClicked: {
                    arrow.rotation = 0;
                }
            }
        }

        Button {
            text: "FullScreen"
            Layout.fillWidth: true
            onClicked: {
                // 5 = FullScreen
                // 2 = Window
                if(window.visibility === 5)
                    window.visibility = 2;
                else if(window.visibility === 2)
                    window.visibility = 5;

            }
        }
    }
}

