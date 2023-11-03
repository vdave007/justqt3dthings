import QtQuick 2.15
import QtQuick.Controls 2.15
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

        Model {
            position: Qt.vector3d(0, -100, 0)
            objectName: "Sphere"
            source: "#Sphere"
            pickable: true
            scale: Qt.vector3d(1, 1, 1)
            materials: [ DefaultMaterial {
                    diffuseColor: "red"
                }
            ]
        }

        Model {
            position: Qt.vector3d(0, 100, 0)
            objectName: "Cube"
            source: "#Cube"
            pickable: true
            scale: Qt.vector3d(1, 1, 1)
            materials: [ DefaultMaterial {
                    diffuseColor: "red"
                }
            ]
        }

        MouseArea {
            anchors.fill: parent

            property var lastPickedObject: undefined

            onClicked: mouse => {
                           var result = view.pick(mouse.x, mouse.y);
                           if (result.objectHit) {
                               var pickedObject = result.objectHit;
                               console.log("Picked object:", pickedObject.objectName);
                               if(lastPickedObject){
                                   //Break old binding
                                   lastPickedObject.scale = Qt.vector3d(lastPickedObject.scale.x, lastPickedObject.scale.y, lastPickedObject.scale.z);
                               }
                               sliderController.valueX = pickedObject.scale.x;
                               sliderController.valueY = pickedObject.scale.y;
                               sliderController.valueZ = pickedObject.scale.z;
                               pickedObject.scale = Qt.binding(function() {return sliderController.valuesVector});

                               lastPickedObject = pickedObject;
                           }
                       }
        }
    }

    Slider3Axis {
        id: sliderController
    }



    Text {
        anchors.right: parent.right
        text: `X= ${view.camera.x.toFixed(2)} \nY= ${view.camera.y.toFixed(2)} \nZ= ${view.camera.z.toFixed(2)}\n`
    }
}
