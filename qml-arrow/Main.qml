import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import Animator

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Animator {
        id: animator
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 3

        Item {
            // spacer item
            Layout.fillWidth: true
            Layout.fillHeight: true
            Rectangle { anchors.fill: parent; color: "#ffaaaa" } // to visualize the spacer
        }

        RowLayout {
            spacing: 10
            Button {
                text: "left"
                Layout.fillWidth: true
                onClicked: animator.drawArrow()
            }

            Button {
                text: "center"
                Layout.fillWidth: true
                onClicked: animator.drawArrow()
            }

            Button {
                text: "right"
                Layout.fillWidth: true
                onClicked: animator.drawArrow()
            }
        }
    }
}

