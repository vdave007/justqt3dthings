import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick3D
import QtQuick3D.Helpers

Item {    
    property var lastPickedObject: undefined

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

        Node {
            Model {
                property string color: "red"
                position: Qt.vector3d(0, -100, 0)
                objectName: "Sphere"
                source: "#Sphere"
                pickable: true
                scale: Qt.vector3d(1, 1, 1)
                materials: [ DefaultMaterial {
                        diffuseColor: parent.color
                    }
                ]
            }
        }

        Node {
            Model {
                property string color: "green"
                position: Qt.vector3d(0, 100, 0)
                objectName: "Cube"
                source: "#Cube"
                pickable: true
                scale: Qt.vector3d(1, 1, 1)
                materials: [ DefaultMaterial {
                        diffuseColor: parent.color
                    }
                ]
            }
        }

        MouseArea {
            anchors.fill: parent

            onClicked: mouse => {
                           var result = view.pick(mouse.x, mouse.y);
                           if (result.objectHit) {
                               var pickedObject = result.objectHit;
                               console.log("Picked object:", pickedObject.objectName);
                               selectedObjectName.text = pickedObject.objectName;
                               if(lastPickedObject){
                                   //Break old binding
                                   lastPickedObject.scale = Qt.vector3d(lastPickedObject.scale.x, lastPickedObject.scale.y, lastPickedObject.scale.z);
                                   lastPickedObject.position = Qt.vector3d(lastPickedObject.position.x, lastPickedObject.position.y, lastPickedObject.position.z);
                                   lastPickedObject.eulerRotation = Qt.vector3d(lastPickedObject.eulerRotation.x, lastPickedObject.eulerRotation.y, lastPickedObject.eulerRotation.z);

                               }
                               scaleSliderController.setFromVector(pickedObject.scale);
                               positionSliderController.setFromVector(pickedObject.position);
                               rotationSliderController.setFromVector(pickedObject.eulerRotation);

                               pickedObject.scale = Qt.binding(function() {return scaleSliderController.valuesVector});
                               pickedObject.position = Qt.binding(function() {return positionSliderController.valuesVector});
                               pickedObject.eulerRotation = Qt.binding(function() {return rotationSliderController.valuesVector});

                               lastPickedObject = pickedObject;
                           }
                       }
        }
    }

    Column {
        Row {
            Text {
                text: "Selected:"
            }

            Label {
                id: selectedObjectName
                text: "NONE"
            }
        }

        Text {
            text: "Scale:"
        }

        Slider3Axis {
            id: scaleSliderController
        }

        Row {
            Text {
                text: "Color"
            }

            TextField {
                text: lastPickedObject ? lastPickedObject.color : ""


                onAccepted: {
                    if (lastPickedObject) {
                        lastPickedObject.color = text;
                    }
                }
            }
        }

        Text {
            text: "Position:"
        }

        Slider3Axis {
            id: positionSliderController
            lowerLimit: -500
            upperLimit: 500
        }

        Text {
            text: "Rotation:"
        }

        Slider3Axis {
            id: rotationSliderController
            lowerLimit: 0
            upperLimit: 360
        }
    }

    Text {
        anchors.right: parent.right
        text: `Camera\nX= ${view.camera.x.toFixed(2)} \nY= ${view.camera.y.toFixed(2)} \nZ= ${view.camera.z.toFixed(2)}\n`
    }
}
