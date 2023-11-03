import QtQuick 2.15
import QtQuick3D
import QtQuick3D.Helpers

Item {

    View3D {
            id: view
            anchors.fill: parent

            environment: SceneEnvironment {
                id: env
                backgroundMode: SceneEnvironment.Color
                clearColor: "skyblue"
            }

            camera: camera

            PerspectiveCamera {
                id: camera
                position: Qt.vector3d(0, 50, 500)
            }

            WasdController {
                controlledObject: camera
            }

            DirectionalLight {
                eulerRotation.x: -30
                castsShadow: true
            }

            Felgologo3d{
                scale.x: 20
                scale.y: 20
                scale.z: 20
            }

            Text {
                anchors.right: parent.right
                text: `X= ${view.camera.x.toFixed(2)} \nY= ${view.camera.y.toFixed(2)} \nZ= ${view.camera.z.toFixed(2)}\n`
            }
    }
}
