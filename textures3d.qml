import QtQuick 2.15
import QtQuick3D

View3D {
    environment: SceneEnvironment {
        id: env
        backgroundMode: SceneEnvironment.SkyBox
        clearColor: "skyblue"
    }

    OrthographicCamera {
        position: Qt.vector3d(0, 200, 300)
        eulerRotation.x: -30
    }

    DirectionalLight {
        eulerRotation.x: -30
        castsShadow: true
    }


    Node {
        Model {
            source: "#Sphere"
            scale: Qt.vector3d(1, 1, 1)
            materials: [
                DefaultMaterial {
                    diffuseColor: "red"
                }

            ]
        }
    }
}
