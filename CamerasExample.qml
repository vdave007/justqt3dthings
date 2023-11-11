
import QtQuick
import QtQuick.Controls
import QtQuick3D

Rectangle {
    id: root

    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment
        camera: perspectiveCamera

        SceneEnvironment {
            id: sceneEnvironment
            backgroundMode: SceneEnvironment.SkyBox
            clearColor: "skyBlue"
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: -0
                y: -0
                z: 2405.63086
            }

            FrustumCamera {
                id: frustrumCamera
                x: -0
                y: -0
                z: 750
                clipNear: 100
                clipFar: 1000
                top: 28
                bottom: -28
                left: -50
                right: 50
            }

            PerspectiveCamera {
                id: perspectiveCamera
                z: 750
            }

            OrthographicCamera {
                id: orthographicCamera
                z: 750
            }

            Model {
                id: cubeModel
                eulerRotation.y: 45
                eulerRotation.x: 30
                materials: defaultMaterial
                source: "#Cube"
            }

            Model {
                id: cylinderModel
                x: 346.143
                y: 0
                source: "#Cylinder"
                z: -460.12674
                materials: defaultMaterial
            }
        }
    }

    Item {
        id: __materialLibrary__
        DefaultMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            diffuseColor: "#cecece"
        }
    }

    Row {
        RoundButton {
            text: "PerspectiveCamera"
            onClicked: {
                view3D.camera = perspectiveCamera;
            }
        }
        RoundButton {
            text: "OrtographicCamera"
            onClicked: {
                view3D.camera = orthographicCamera;
            }
        }
        RoundButton {
            text: "FrustrumCamera"
            onClicked: {
                view3D.camera = frustrumCamera;
            }
        }
    }
}
