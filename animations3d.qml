import QtQuick 2.15
import QtQuick3D
import QtQuick3D.Helpers

View3D {
    id: root
    focus: true
    Keys.onPressed: (event) => {
        if (event.key === Qt.Key_W) {
            console.log("Running!")
            rabbit.state = "run";
        }


        if (event.key === Qt.Key_S) {
            console.log("Idle!")
            rabbit.state = "idle";
        }


        if (event.key === Qt.Key_X) {
            console.log("DEATH!")
            rabbit.state = "death";
        }
    }

    environment: SceneEnvironment {
        id: env
        backgroundMode: SceneEnvironment.SkyBox
        clearColor: "skyblue"
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
        }
    }

    Node {
        id: scene
        DirectionalLight {
            id: directionalLight
            x: -0
            y: 1000
            z: 1000
        }

        Node {
            y: 150
            PerspectiveCamera {
                id: perspectiveCamera
                z: 750
            }


            PropertyAnimation on eulerRotation.y {
                loops: Animation.Infinite
                duration: 5000
                to: 0
                from: -360
            }
        }

        Rabbit {
            id: rabbit
        }
    }

    DebugView {
        source: root
    }
}
