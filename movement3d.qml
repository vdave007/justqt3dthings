import QtQuick
import QtQuick3D
import QtQuick.Controls
import Multitool.Helpers 1.0

Item {
    id: root

    Component.onCompleted: {
        mouseCursorController.resetCursor(true);
    }

    onFocusChanged: {
        console.log("Focus changed", focus);
    }

    focus: true

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

            DirectionalLight {
                eulerRotation.x: -30
                castsShadow: true
            }

            FrameAnimation {
                id: updateTimer
                running: false
                onTriggered: {
                    mouseCursorController.update(frameTime);
                }
            }

            MouseCursorController {
                id: mouseCursorController
                targetObject: camera
            }

            // TODO: Implement keyboard controller

            MouseArea {
                id: maHelper

                anchors.fill: parent
                hoverEnabled: true

                onEntered: {
                    console.log("enterred");
                    mouseCursorController.resetCursor(true);
                    mouseCursorController.start();
                    updateTimer.running = true;
                }

                onExited: {
                    console.log("exitted");
                    mouseCursorController.stop();
                    updateTimer.running = false;
                }

                onPressed: {
                    console.log("PEW");
                }
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
    }
}
