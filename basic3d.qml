import QtQuick 2.15
import QtQuick3D
import QtQuick3D.Helpers

Item {

    View3D {
            id: view
            anchors.fill: parent

            environment: SceneEnvironment {
                        id: env
                        backgroundMode: SceneEnvironment.SkyBox
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

            Node {
                Model {
                    source: "#Sphere"
                    scale: Qt.vector3d(1, 1, 1)
                    materials: [ PrincipledMaterial {
                            baseColorMap: Texture {
                                source: "mars.jpg"
                            }
                        }
                    ]
                    position: Qt.vector3d(0, -100, 0)
                }
            }

            Felgologo3d{
                id: felgoLogo
                scale.x: 20
                scale.y: 20
                scale.z: 20

                SequentialAnimation {
                    running: true
                    loops: Animation.Infinite

                    NumberAnimation {
                        target: felgoLogo
                        property: "eulerRotation.z"
                        from: 0
                        to: 30
                        duration: 4000
                        easing.type: Easing.InOutBack
                    }
                    NumberAnimation {
                        target: felgoLogo
                        property: "eulerRotation.z"
                        from: 30
                        to: 0
                        duration: 4000
                        easing.type: Easing.InOutBack
                    }
                }
            }

            Text {
                anchors.right: parent.right
                text: `X= ${view.camera.x.toFixed(2)} \nY= ${view.camera.y.toFixed(2)} \nZ= ${view.camera.z.toFixed(2)}\n`
            }

            DebugView {
                source: view
            }
    }
}
