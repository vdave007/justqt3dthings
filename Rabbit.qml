import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node

    state: "idle"

    states: [
        State {
            name: "run"
            PropertyChanges {
                target: runningAnimation
                running: true
            }
        },
        State {
            name: "idle"
            PropertyChanges {
                target: idleAnimation
                running: true
            }
        },
        State {
            name: "death"
            PropertyChanges {
                target: deathAnimation
                running: true
            }
        }

    ]

    // Resources
    Texture {
        id: rabbit_texture
        source: "rabbit_texture.jpg"
    }
    PrincipledMaterial {
        id: material_material
        baseColorMap: rabbit_texture
    }
    Skin {
        id: skin
        joints: [
            bone,
            bone_001,
            bone_002,
            bone_003,
            ear01_L,
            ear02_L,
            ear01_R,
            ear02_R,
            fleg01_L,
            fleg02_L,
            fleg03_L,
            fleg01_R,
            fleg02_R,
            fleg03_R,
            bleg01_L,
            bleg02_L,
            bleg03_L,
            bleg01_R,
            bleg02_R,
            bleg03_R
        ]
        inverseBindPoses: [
            Qt.matrix4x4(0.01, 2.57653e-09, -4.01234e-09, 4.24397e-06, -9.31323e-16, 0.00841449, 0.00540337, 1.00329, 4.76837e-09, -0.00540337, 0.00841449, 0.699603, 0, 0, 0, 1),
            Qt.matrix4x4(0.01, 4.52791e-08, 1.22929e-09, 2.48721e-06, -7.79983e-15, -0.000271393, 0.00999632, 0.538527, 4.52958e-08, -0.00999632, -0.000271393, 0.461491, 0, 0, 0, 1),
            Qt.matrix4x4(0.01, 2.6843e-08, -3.64897e-08, 5.70852e-06, -7.45058e-15, 0.00805521, 0.00592567, -0.735315, 4.52995e-08, -0.00592567, 0.00805521, -0.24966, 0, 0, 0, 1),
            Qt.matrix4x4(0.01, 4.19515e-08, 1.70914e-08, -8.70594e-07, -5.58794e-15, -0.00377297, 0.00926093, -0.561225, 4.52995e-08, -0.00926093, -0.00377297, 1.2027, 0, 0, 0, 1),
            Qt.matrix4x4(0.00931912, -0.00318969, 0.00172622, 0.0281959, 0.0036254, 0.00805861, -0.00468138, -0.590481, 0.000102122, 0.00498846, 0.00866631, -1.46138, 0, 0, 0, 1),
            Qt.matrix4x4(0.0090177, -0.00380436, 0.00205132, 0.0996161, 0.00432107, 0.008042, -0.00408101, -0.960743, -9.71098e-05, 0.00456653, 0.00889593, -1.41314, 0, 0, 0, 1),
            Qt.matrix4x4(0.00931912, 0.00318969, -0.00172622, -0.0281873, -0.0036254, 0.00805861, -0.00468138, -0.590485, -0.00010212, 0.00498846, 0.00866631, -1.46138, 0, 0, 0, 1),
            Qt.matrix4x4(0.0090177, 0.00380436, -0.00205132, -0.0996077, -0.00432107, 0.008042, -0.00408101, -0.960746, 9.71097e-05, 0.00456653, 0.00889593, -1.41314, 0, 0, 0, 1),
            Qt.matrix4x4(0.00996418, -0.000731998, -0.000423357, -0.347405, -0.000845607, -0.0086252, -0.00498908, 0.364939, 4.55017e-08, 0.00500702, -0.0086562, 0.34179, 0, 0, 0, 1),
            Qt.matrix4x4(0.00999391, -0.000348774, 1.24054e-05, -0.338995, -0.000348562, -0.00999292, -0.000142139, -0.404621, 1.73538e-05, 0.000141623, -0.00999898, 0.158185, 0, 0, 0, 1),
            Qt.matrix4x4(0.00999924, 9.50858e-06, -0.000122917, -0.304185, 0.000114893, -0.00433428, 0.00901115, -0.534051, -4.47072e-05, -0.00901188, -0.00433406, -0.7656, 0, 0, 0, 1),
            Qt.matrix4x4(0.00996418, 0.000731998, 0.000423357, 0.347414, 0.000845608, -0.0086252, -0.00498908, 0.36494, -4.58985e-08, 0.00500702, -0.0086562, 0.34179, 0, 0, 0, 1),
            Qt.matrix4x4(0.00999391, 0.000348774, -1.24053e-05, 0.339004, 0.000348563, -0.00999292, -0.00014214, -0.404621, -1.73539e-05, 0.000141622, -0.00999899, 0.158184, 0, 0, 0, 1),
            Qt.matrix4x4(0.00999924, -9.50862e-06, 0.000122917, 0.304194, -0.000114892, -0.00433428, 0.00901115, -0.534051, 4.47074e-05, -0.00901188, -0.00433406, -0.765601, 0, 0, 0, 1),
            Qt.matrix4x4(0.00998481, -0.00055091, -1.00386e-05, -0.533369, -0.000538824, -0.00972444, -0.00226827, -0.381803, 0.000115197, 0.00226537, -0.00973935, -0.817363, 0, 0, 0, 1),
            Qt.matrix4x4(0.00998913, 5.42706e-05, -0.000463074, -0.527614, 0.000457743, -0.00302953, 0.00951906, 0.699887, -8.86286e-05, -0.0095299, -0.00302872, -1.14349, 0, 0, 0, 1),
            Qt.matrix4x4(0.00999244, 3.54057e-05, -0.0003871, -0.524407, 0.000387312, -0.00175284, 0.00983756, 0.485392, -3.30213e-05, -0.00984512, -0.00175288, -1.08947, 0, 0, 0, 1),
            Qt.matrix4x4(0.00998481, 0.00055091, 1.00394e-05, 0.533378, 0.000538825, -0.00972444, -0.00226827, -0.381803, -0.000115203, 0.00226536, -0.00973933, -0.817362, 0, 0, 0, 1),
            Qt.matrix4x4(0.00998913, -5.42707e-05, 0.000463074, 0.527623, -0.000457739, -0.00302952, 0.00951905, 0.699886, 8.86293e-05, -0.0095299, -0.00302872, -1.14349, 0, 0, 0, 1),
            Qt.matrix4x4(0.00999244, -3.54057e-05, 0.0003871, 0.524416, -0.000387308, -0.00175283, 0.00983755, 0.485392, 3.30225e-05, -0.00984512, -0.00175288, -1.08947, 0, 0, 0, 1)
        ]
    }

    // Nodes:
    Node {
        id: rootNode
        Model {
            id: plane_001
            position: Qt.vector3d(0.000915513, 108.805, 38.136)
            source: "meshes/rabbit.mesh"
            skin: skin
            materials: material_material
        }
        Node {
            id: armature_001
            position: Qt.vector3d(0.000457757, 111.637, 68.676)
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale: Qt.vector3d(100, 100, 100)
            Node {
                id: bone
                position: Qt.vector3d(-1.09804e-16, 1.43619, -0.494514)
                rotation: Qt.quaternion(0.479408, 0.877592, 1.143e-07, 2.09234e-07)
                Node {
                    id: bone_001
                    position: Qt.vector3d(1.41011e-14, 1.11965, -4.47035e-08)
                    rotation: Qt.quaternion(0.871006, 0.491273, 1.76498e-06, 1.22976e-06)
                    Node {
                        id: bone_002
                        position: Qt.vector3d(-6.8226e-14, 1.16306, 1.95578e-08)
                        rotation: Qt.quaternion(0.88614, -0.463418, 1.64602e-10, -2.09918e-06)
                        Node {
                            id: bone_003
                            position: Qt.vector3d(6.38096e-15, 0.568189, -6.70552e-08)
                            rotation: Qt.quaternion(0.788939, 0.614471, 1.44101e-13, 2.78352e-06)
                            Node {
                                id: ear01_L
                                position: Qt.vector3d(0.202727, -0.106834, -0.29314)
                                rotation: Qt.quaternion(-0.318343, 0.929846, 0.172812, 0.0646573)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: ear02_L
                                    position: Qt.vector3d(-1.49012e-08, 0.300295, 3.21306e-08)
                                    rotation: Qt.quaternion(0.998944, 0.025999, 0.000413312, -0.0378913)
                                    scale: Qt.vector3d(1, 1, 1)
                                    Node {
                                        id: ear02_L_end
                                        position: Qt.vector3d(0, 0.365242, 0)
                                    }
                                }
                            }
                            Node {
                                id: ear01_R
                                position: Qt.vector3d(-0.202724, -0.106834, -0.293142)
                                rotation: Qt.quaternion(-0.318344, 0.929846, -0.17281, -0.064653)
                                scale: Qt.vector3d(1, 1, 1)
                                Node {
                                    id: ear02_R
                                    position: Qt.vector3d(0, 0.300295, -1.92318e-07)
                                    rotation: Qt.quaternion(0.998944, 0.025999, -0.000413379, 0.0378913)
                                    scale: Qt.vector3d(1, 1, 1)
                                    Node {
                                        id: ear02_R_end
                                        position: Qt.vector3d(0, 0.365242, 0)
                                    }
                                }
                            }
                        }
                    }
                    Node {
                        id: fleg01_L
                        position: Qt.vector3d(0.377021, 0.998372, 0.330762)
                        rotation: Qt.quaternion(0.5109, 0.858598, -0.0363669, 0.0216437)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: fleg02_L
                            position: Qt.vector3d(-2.04891e-08, 0.622131, -5.82861e-09)
                            rotation: Qt.quaternion(0.967327, -0.251864, 0.0159089, -0.0243103)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: fleg03_L
                                position: Qt.vector3d(1.78989e-09, 0.503092, 5.00586e-09)
                                rotation: Qt.quaternion(0.842581, -0.538229, 0.00367509, -0.0187952)
                                Node {
                                    id: fleg03_L_end
                                    position: Qt.vector3d(0, 0.381573, 0)
                                }
                            }
                        }
                    }
                    Node {
                        id: fleg01_R
                        position: Qt.vector3d(-0.377024, 0.998372, 0.330759)
                        rotation: Qt.quaternion(0.510901, 0.858598, 0.0363646, -0.0216399)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: fleg02_R
                            position: Qt.vector3d(4.65661e-09, 0.622131, -9.85256e-09)
                            rotation: Qt.quaternion(0.967326, -0.251864, -0.0159089, 0.0243103)
                            Node {
                                id: fleg03_R
                                position: Qt.vector3d(-7.14499e-09, 0.503092, 3.43425e-09)
                                rotation: Qt.quaternion(0.842581, -0.538229, -0.0036751, 0.0187952)
                                Node {
                                    id: fleg03_R_end
                                    position: Qt.vector3d(0, 0.381573, 0)
                                }
                            }
                        }
                    }
                }
                Node {
                    id: bleg01_L
                    position: Qt.vector3d(0.521406, 0.34473, 0.0728826)
                    rotation: Qt.quaternion(0.170099, 0.985041, -0.0255779, 0.0102644)
                    Node {
                        id: bleg02_L
                        position: Qt.vector3d(-2.21189e-08, 0.678018, -1.74623e-07)
                        rotation: Qt.quaternion(0.733545, -0.678589, -0.00473094, -0.0375017)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: bleg03_L
                            position: Qt.vector3d(1.44355e-08, 0.365804, -1.55065e-07)
                            rotation: Qt.quaternion(0.997827, -0.0657686, -4.58589e-06, 0.00391755)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: bleg03_L_end
                                position: Qt.vector3d(0, 0.432325, 0)
                            }
                        }
                    }
                }
                Node {
                    id: bleg01_R
                    position: Qt.vector3d(-0.521407, 0.34473, 0.0728822)
                    rotation: Qt.quaternion(0.170099, 0.985041, 0.0255779, -0.0102641)
                    scale: Qt.vector3d(1, 1, 1)
                    Node {
                        id: bleg02_R
                        position: Qt.vector3d(-7.31088e-08, 0.678017, -1.04774e-07)
                        rotation: Qt.quaternion(0.733545, -0.67859, 0.00473094, 0.0375017)
                        scale: Qt.vector3d(1, 1, 1)
                        Node {
                            id: bleg03_R
                            position: Qt.vector3d(3.77186e-08, 0.365803, -6.79865e-08)
                            rotation: Qt.quaternion(0.997827, -0.0657687, 4.58667e-06, -0.00391756)
                            scale: Qt.vector3d(1, 1, 1)
                            Node {
                                id: bleg03_R_end
                                position: Qt.vector3d(0, 0.432325, 0)
                            }
                        }
                    }
                }
            }
        }
    }

    // Animations:
    Timeline {
        startFrame: 0
        endFrame: 750
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            id: deathAnimation
            duration: 750
            from: 0
            to: 750
            running: false
            loops: 1
        }
        KeyframeGroup {
            target: bone
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.09804e-16, 1.43619, -0.494514)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-4.12094e-09, 1.43619, -0.479254)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-8.24188e-09, 1.43619, -0.44128)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-1.23628e-08, 1.43619, -0.392299)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-1.64838e-08, 1.43619, -0.344018)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-2.06047e-08, 1.43619, -0.305904)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-2.47256e-08, 1.43619, -0.278449)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-2.88466e-08, 1.43619, -0.259907)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-3.29675e-08, 1.43619, -0.248529)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-3.70885e-08, 1.43619, -0.242566)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-4.12094e-08, 1.43619, -0.24027)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-4.53303e-08, 1.43619, -0.239893)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-4.94513e-08, 1.43619, -0.260817)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-5.35722e-08, 1.43619, -0.31478)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-5.76932e-08, 1.43619, -0.388566)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-6.18141e-08, 1.43619, -0.46896)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-6.5935e-08, 1.43619, -0.542746)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-7.0056e-08, 1.43619, -0.596708)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-7.41769e-08, 1.43619, -0.617633)
            }
        }
        KeyframeGroup {
            target: bone
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.479408, 0.877592, 1.143e-07, 2.09234e-07)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.484757, 0.874649, 1.19531e-07, 2.05862e-07)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.498302, 0.867003, 1.22888e-07, 2.03731e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.516262, 0.856431, 1.2527e-07, 2.0242e-07)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.534926, 0.844899, 1.27536e-07, 2.0144e-07)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.551338, 0.834264, -0.00276616, 0.0047496)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.564948, 0.82483, -0.0107304, 0.0193496)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.575625, 0.816174, -0.023411, 0.0443633)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.582977, 0.807493, -0.0403507, 0.0804066)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.586297, 0.79757, -0.0610833, 0.128091)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.584514, 0.784739, -0.0850623, 0.187863)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.576189, 0.766883, -0.111556, 0.259716)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.554908, 0.74387, -0.140683, 0.344882)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.516379, 0.714627, -0.171553, 0.43958)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.464052, 0.677663, -0.201129, 0.533831)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.405143, 0.635689, -0.226281, 0.616892)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.349992, 0.595428, -0.244857, 0.680453)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.309651, 0.565446, -0.256112, 0.720273)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.294164, 0.553901, -0.259961, 0.734222)
            }
        }
        KeyframeGroup {
            target: bone_001
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.41011e-14, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-1.24175e-09, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-2.48351e-09, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-3.72528e-09, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-4.96704e-09, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-6.20881e-09, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-7.45057e-09, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-8.69234e-09, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-9.9341e-09, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-1.11759e-08, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-1.24176e-08, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-1.36594e-08, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-1.49012e-08, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-1.61429e-08, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-1.73847e-08, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-1.86264e-08, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-1.98682e-08, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-2.111e-08, 1.11965, -4.47035e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-2.23517e-08, 1.11965, -4.47035e-08)
            }
        }
        KeyframeGroup {
            target: bone_001
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.871006, 0.491273, 1.76498e-06, 1.22976e-06)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.884518, 0.466115, 0.00167476, 0.0190321)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.910643, 0.408316, 0.00824709, 0.0627633)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.930831, 0.347755, 0.0219321, 0.110182)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.936179, 0.319036, 0.0448454, 0.140617)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.930882, 0.324198, 0.0708576, 0.152754)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.922506, 0.339317, 0.0924635, 0.159052)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.912198, 0.360449, 0.109869, 0.160935)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.901175, 0.383638, 0.12318, 0.15979)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.890951, 0.404957, 0.132482, 0.157048)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.883369, 0.420557, 0.137884, 0.154206)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.880424, 0.426661, 0.139532, 0.152791)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.881019, 0.426885, 0.135347, 0.1525)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.88246, 0.427272, 0.124832, 0.152054)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.884266, 0.42768, 0.110499, 0.151502)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.886024, 0.428005, 0.0948756, 0.150903)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.887445, 0.428201, 0.0805206, 0.150341)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.888367, 0.428283, 0.0700136, 0.149918)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.888698, 0.428301, 0.065938, 0.149752)
            }
        }
        KeyframeGroup {
            target: bone_002
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-6.8226e-14, 1.16306, 1.95578e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-2.07025e-10, 1.16306, 1.90921e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-4.13982e-10, 1.16306, 1.86265e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-6.20939e-10, 1.16306, 1.81608e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-8.27895e-10, 1.16306, 1.76951e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-1.03485e-09, 1.16306, 1.72295e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-1.24181e-09, 1.16306, 1.67638e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-1.44877e-09, 1.16306, 1.62981e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-1.65572e-09, 1.16306, 1.58325e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-1.86268e-09, 1.16306, 1.53668e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-2.06964e-09, 1.16306, 1.49012e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-2.27659e-09, 1.16306, 1.44355e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-2.48355e-09, 1.16306, 1.39698e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-2.69051e-09, 1.16306, 1.35042e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-2.89746e-09, 1.16306, 1.30385e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-3.10442e-09, 1.16306, 1.25729e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-3.31138e-09, 1.16306, 1.21072e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-3.51833e-09, 1.16306, 1.16415e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-3.72529e-09, 1.16306, 1.11759e-08)
            }
        }
        KeyframeGroup {
            target: bone_002
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.88614, -0.463418, 1.64602e-10, -2.09918e-06)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.885131, -0.465265, 0.00375522, 0.00753453)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.882196, -0.47011, 0.0113166, 0.0244855)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.877703, -0.477023, 0.0171202, 0.0423456)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.872581, -0.485374, 0.0156109, 0.0526269)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.867235, -0.49433, 0.00155949, 0.0594938)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.861202, -0.502886, -0.0242177, 0.0696433)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.854415, -0.510333, -0.0581783, 0.0784282)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.847115, -0.516161, -0.0968117, 0.0812559)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.839878, -0.520087, -0.136739, 0.0735989)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.833359, -0.521906, -0.174751, 0.0508914)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.827783, -0.521137, -0.207656, 0.00833563)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.831673, -0.516251, -0.184882, -0.0873124)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.833108, -0.495043, -0.0905525, -0.229487)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.81874, -0.45358, 0.0134513, -0.351781)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.815895, -0.412655, 0.0606173, -0.400445)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.853096, -0.391393, 0.0569177, -0.340293)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.895413, -0.381322, 0.0494012, -0.224475)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.91096, -0.376965, 0.0450936, -0.161295)
            }
        }
        KeyframeGroup {
            target: bone_003
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(6.38096e-15, 0.568189, -6.70552e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-2.48352e-09, 0.568189, -6.16742e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-4.96705e-09, 0.568189, -5.62933e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-7.45058e-09, 0.568189, -5.09123e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-9.9341e-09, 0.568189, -4.55313e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-1.24176e-08, 0.568189, -4.01504e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-1.49012e-08, 0.568189, -3.47694e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-1.73847e-08, 0.568189, -2.93884e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-1.98682e-08, 0.568189, -2.40074e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-2.23517e-08, 0.568189, -1.86265e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-2.48353e-08, 0.568189, -1.32455e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-2.73188e-08, 0.568189, -7.8645e-09)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-2.98023e-08, 0.568189, -2.48353e-09)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-3.22858e-08, 0.568189, 2.89744e-09)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-3.47694e-08, 0.568189, 8.27843e-09)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-3.72529e-08, 0.568189, 1.36594e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-3.97364e-08, 0.568189, 1.90404e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-4.222e-08, 0.568189, 2.44213e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-4.47035e-08, 0.568189, 2.98023e-08)
            }
        }
        KeyframeGroup {
            target: bone_003
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.78894, 0.614471, 2.88202e-13, 2.78352e-06)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.806607, 0.589527, -0.00256554, 0.0428535)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.83795, 0.527925, -0.00826711, 0.138083)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.857663, 0.458997, -0.013854, 0.231397)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.862637, 0.426056, -0.0162942, 0.272156)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.864069, 0.427464, -0.0253549, 0.264606)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.86728, 0.431066, -0.0482666, 0.244291)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.870495, 0.435849, -0.0785453, 0.214723)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.872453, 0.441042, -0.109562, 0.17973)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.872931, 0.446379, -0.13473, 0.143477)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.872709, 0.452113, -0.147731, 0.110217)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.873028, 0.458769, -0.142452, 0.0840305)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.873827, 0.466065, -0.124469, 0.0609674)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.87411, 0.472543, -0.105658, 0.0383594)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.873993, 0.477126, -0.0894079, 0.0222009)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.874053, 0.478966, -0.0792284, 0.0185835)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.877103, 0.468387, -0.0605707, 0.0873824)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.871383, 0.442641, -0.0313986, 0.209224)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.862637, 0.426056, -0.0162942, 0.272156)
            }
        }
        KeyframeGroup {
            target: bleg01_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0.521406, 0.34473, 0.0728826)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(0.521406, 0.339181, 0.0755086)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(0.521406, 0.326972, 0.0812858)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(0.521406, 0.314762, 0.0870627)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(0.521406, 0.309212, 0.0896885)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(0.521406, 0.311175, 0.0887611)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(0.521406, 0.316236, 0.0863678)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(0.521406, 0.32316, 0.0830936)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0.521406, 0.330709, 0.0795233)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0.521406, 0.337645, 0.0762416)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(0.521406, 0.342731, 0.0738332)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(0.521406, 0.34473, 0.0728826)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(0.511229, 0.343223, 0.0782339)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(0.486408, 0.339269, 0.0920755)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(0.45275, 0.333849, 0.11101)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(0.416061, 0.327944, 0.13164)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(0.382216, 0.322534, 0.150569)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(0.357355, 0.318581, 0.16441)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(0.347688, 0.31705, 0.169776)
            }
        }
        KeyframeGroup {
            target: bleg01_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.170099, 0.985041, -0.0255779, 0.0102644)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.139733, 0.989781, -0.0271546, 0.00837339)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.0722191, 0.996912, -0.0305443, 0.0041701)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.00437147, 0.999419, -0.0337922, -5.24761e-05)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(-0.0266673, 0.999022, -0.0352255, -0.0019837)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(-0.0230078, 0.999252, -0.0306164, 0.00542361)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(-0.0117469, 0.999428, -0.0184375, 0.0257855)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.00572057, 0.998407, -0.00128614, 0.0561211)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.0279051, 0.995083, 0.0181405, 0.0932858)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.0532249, 0.988855, 0.0370712, 0.134008)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.0800915, 0.979875, 0.0527626, 0.17506)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.107039, 0.969049, 0.0626033, 0.213466)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.132445, 0.957822, 0.0450341, 0.251013)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.154055, 0.945135, -0.00641644, 0.288002)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.169358, 0.929719, -0.0711583, 0.319183)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.176375, 0.914724, -0.127987, 0.340281)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.177961, 0.905063, -0.161071, 0.351064)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.178423, 0.900748, -0.174496, 0.355485)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.178454, 0.899882, -0.177062, 0.356392)
            }
        }
        KeyframeGroup {
            target: bleg01_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-0.521407, 0.34473, 0.0728822)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-0.521407, 0.339181, 0.0755081)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-0.521407, 0.326971, 0.0812852)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-0.521407, 0.314762, 0.0870622)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-0.521407, 0.309212, 0.0896881)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-0.521407, 0.31118, 0.0887574)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-0.521407, 0.316254, 0.0863565)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-0.521407, 0.323192, 0.0830736)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-0.521407, 0.330751, 0.0794969)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-0.521407, 0.337689, 0.0762139)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-0.521407, 0.342763, 0.0738131)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-0.521407, 0.34473, 0.0728822)
            }
        }
        KeyframeGroup {
            target: bleg01_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.170099, 0.985042, 0.0255779, -0.0102641)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.176196, 0.983934, 0.0269031, -0.0102543)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.189576, 0.981362, 0.0298698, -0.00991115)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.202898, 0.978605, 0.0329689, -0.00876564)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.208902, 0.9773, 0.0347048, -0.00635139)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.20694, 0.977909, 0.0290167, 0.00527047)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.201688, 0.978894, 0.0133757, 0.030163)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.193915, 0.978965, -0.00835286, 0.0628837)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.184556, 0.977414, -0.0321589, 0.0978059)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.174784, 0.974589, -0.0539761, 0.129281)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.165941, 0.971861, -0.0698542, 0.151886)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.159403, 0.971115, -0.0760115, 0.160467)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.155949, 0.973013, -0.0725548, 0.153822)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.155665, 0.976222, -0.0636565, 0.136772)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.155164, 0.980013, -0.0511588, 0.1135)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.154934, 0.98328, -0.0375302, 0.0880177)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.154062, 0.985632, -0.0250187, 0.0645625)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.153629, 0.986863, -0.0159179, 0.0473845)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.15349, 0.987233, -0.012396, 0.0407263)
            }
        }
        KeyframeGroup {
            target: bleg02_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-2.21189e-08, 0.678018, -1.74623e-07)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-2.00622e-08, 0.678018, -1.57885e-07)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-1.80056e-08, 0.678018, -1.41147e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-1.59489e-08, 0.678018, -1.24409e-07)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-1.38922e-08, 0.678018, -1.07671e-07)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-1.18356e-08, 0.678018, -9.09333e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-9.77889e-09, 0.678018, -7.41954e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-7.72222e-09, 0.678018, -5.74574e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-5.66555e-09, 0.678018, -4.07195e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-3.60887e-09, 0.678018, -2.39816e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-1.5522e-09, 0.678018, -7.24361e-09)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(5.04468e-10, 0.678018, 9.49433e-09)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(2.56114e-09, 0.678018, 2.62322e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(4.61781e-09, 0.678018, 4.29702e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(6.67448e-09, 0.678018, 5.97081e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(8.73115e-09, 0.678018, 7.64461e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(1.07878e-08, 0.678018, 9.3184e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(1.28445e-08, 0.678018, 1.09922e-07)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(1.49012e-08, 0.678018, 1.2666e-07)
            }
        }
        KeyframeGroup {
            target: bleg02_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.733545, -0.678589, -0.00473094, -0.0375017)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.755405, -0.654078, -0.00912844, -0.0382262)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.800698, -0.597431, -0.0197667, -0.0396028)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.841612, -0.537562, -0.032708, -0.0405806)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.858701, -0.508949, -0.0442909, -0.0405165)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.858367, -0.508792, -0.0532772, -0.0387008)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.858111, -0.508481, -0.0620025, -0.0353243)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.857787, -0.507893, -0.0725118, -0.031441)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.856609, -0.507826, -0.0868339, -0.0281939)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.854633, -0.50738, -0.10706, -0.0265859)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.851369, -0.506079, -0.135241, -0.027641)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.845961, -0.503236, -0.17337, -0.0323638)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.847429, -0.472705, -0.235635, -0.0537647)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.852931, -0.406156, -0.314806, -0.0918901)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.852033, -0.336619, -0.380106, -0.127465)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.84951, -0.304493, -0.406469, -0.142824)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.869477, -0.371421, -0.293322, -0.141485)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.864637, -0.480606, -0.0633062, -0.131956)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.839763, -0.525419, 0.0588934, -0.123552)
            }
        }
        KeyframeGroup {
            target: bleg02_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-7.31088e-08, 0.678017, -1.04774e-07)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-6.82194e-08, 0.678017, -1.07231e-07)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-6.33299e-08, 0.678017, -1.09689e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-5.84405e-08, 0.678017, -1.12147e-07)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-5.3551e-08, 0.678017, -1.14604e-07)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-4.86616e-08, 0.678018, -1.17062e-07)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-4.37722e-08, 0.678018, -1.1952e-07)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-3.88827e-08, 0.678018, -1.21977e-07)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-3.39933e-08, 0.678018, -1.24435e-07)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-2.91038e-08, 0.678018, -1.26893e-07)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-2.42144e-08, 0.678018, -1.2935e-07)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-1.93249e-08, 0.678018, -1.31808e-07)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-1.44355e-08, 0.678018, -1.34266e-07)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-9.54606e-09, 0.678018, -1.36723e-07)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-4.65661e-09, 0.678018, -1.39181e-07)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(2.32831e-10, 0.678018, -1.41639e-07)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(5.12227e-09, 0.678018, -1.44096e-07)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(1.00117e-08, 0.678018, -1.46554e-07)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(1.49012e-08, 0.678018, -1.49012e-07)
            }
        }
        KeyframeGroup {
            target: bleg02_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.733545, -0.67859, 0.00473094, 0.0375017)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.766244, -0.641277, 0.0112747, 0.0388079)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.832213, -0.55231, 0.0257597, 0.0413691)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.887793, -0.456448, 0.0399232, 0.0434138)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.909128, -0.411594, 0.0461151, 0.0441552)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.905999, -0.419458, 0.0404422, 0.0398202)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.897386, -0.439567, 0.0257418, 0.028582)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.884365, -0.466578, 0.00553086, 0.0131191)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.868595, -0.495233, -0.0165354, -0.00377889)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.852739, -0.520689, -0.0367286, -0.0192569)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.840356, -0.538729, -0.0514053, -0.0305152)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.835384, -0.545583, -0.0570667, -0.0348599)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.835855, -0.545181, -0.0551182, -0.0329634)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.83822, -0.542473, -0.0485889, -0.0273795)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.843802, -0.535105, -0.0364281, -0.0182575)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.853636, -0.52054, -0.0176081, -0.00577872)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.86841, -0.495717, 0.00743523, 0.0085669)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.882259, -0.469351, 0.0302411, 0.0203708)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.888168, -0.457066, 0.0401342, 0.0252412)
            }
        }
        KeyframeGroup {
            target: bleg03_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.44355e-08, 0.365804, -1.55065e-07)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(9.49432e-09, 0.365804, -1.4645e-07)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(4.55313e-09, 0.365804, -1.37836e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-3.8805e-10, 0.365804, -1.29221e-07)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-5.32924e-09, 0.365804, -1.20606e-07)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-1.02704e-08, 0.365804, -1.11992e-07)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-1.52116e-08, 0.365804, -1.03377e-07)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-2.01528e-08, 0.365804, -9.47621e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-2.5094e-08, 0.365804, -8.61473e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-3.00352e-08, 0.365804, -7.75326e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-3.49763e-08, 0.365804, -6.89179e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-3.99175e-08, 0.365804, -6.03031e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-4.48587e-08, 0.365804, -5.16884e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-4.97999e-08, 0.365804, -4.30737e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-5.47411e-08, 0.365804, -3.44589e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-5.96823e-08, 0.365804, -2.58442e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-6.46234e-08, 0.365804, -1.72295e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-6.95646e-08, 0.365804, -8.61473e-09)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-7.45058e-08, 0.365804, 0)
            }
        }
        KeyframeGroup {
            target: bleg03_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.997827, -0.0657686, -4.58587e-06, 0.00391755)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.993123, -0.116748, 0.00339724, 0.00801684)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.973109, -0.229376, 0.0110164, 0.0180181)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.940131, -0.338969, 0.0186426, 0.0300946)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.921092, -0.386558, 0.0223342, 0.0407987)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.931439, -0.360273, 0.0159354, 0.0486791)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.955574, -0.289485, -0.00196113, 0.0554385)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.980014, -0.186708, -0.0272829, 0.0629876)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.993324, -0.0703829, -0.054736, 0.0732015)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.992345, 0.0361791, -0.0785083, 0.0881948)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.983117, 0.11156, -0.0939018, 0.110537)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.974902, 0.139439, -0.0976066, 0.143511)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.970074, 0.114954, -0.088786, 0.194574)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.962247, 0.0612522, -0.0725122, 0.255089)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.95086, 0.0072306, -0.0552985, 0.304557)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.944646, -0.0172797, -0.044464, 0.324605)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.960452, 0.000250928, -0.0442539, 0.274908)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.981846, 0.0329711, -0.0489919, 0.180253)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.989037, 0.0503693, -0.0518546, 0.128763)
            }
        }
        KeyframeGroup {
            target: bleg03_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(3.77186e-08, 0.365803, -6.79865e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(3.79514e-08, 0.365803, -5.73798e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(3.81842e-08, 0.365803, -4.67731e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(3.84171e-08, 0.365803, -3.61664e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(3.86499e-08, 0.365803, -2.55596e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(3.88827e-08, 0.365803, -1.49529e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(3.91155e-08, 0.365803, -4.34618e-09)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(3.93484e-08, 0.365803, 6.26056e-09)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(3.95812e-08, 0.365803, 1.68673e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(3.9814e-08, 0.365803, 2.7474e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(4.00469e-08, 0.365803, 3.80807e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(4.02797e-08, 0.365803, 4.86875e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(4.05125e-08, 0.365803, 5.92942e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(4.07454e-08, 0.365803, 6.99009e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(4.09782e-08, 0.365803, 8.05077e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(4.1211e-08, 0.365803, 9.11144e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(4.14439e-08, 0.365803, 1.01721e-07)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(4.16767e-08, 0.365803, 1.12328e-07)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(4.19095e-08, 0.365803, 1.22935e-07)
            }
        }
        KeyframeGroup {
            target: bleg03_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.997827, -0.0657687, 4.58669e-06, -0.00391756)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.99461, -0.103196, -0.00441687, -0.00908444)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.982305, -0.185624, -0.014195, -0.0204907)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.962955, -0.266721, -0.0238714, -0.03175)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.951966, -0.30268, -0.0281805, -0.0367548)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.957926, -0.284085, -0.0246092, -0.0326666)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.971636, -0.234969, -0.0152349, -0.021927)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.986154, -0.165671, -0.00214975, -0.00691508)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.995951, -0.0885432, 0.012227, 0.00960645)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.999222, -0.017581, 0.0252818, 0.0246345)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.99821, 0.0336131, 0.0345888, 0.0353638)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.997093, 0.0529826, 0.0380596, 0.0393694)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.997784, 0.0434225, 0.03621, 0.0350863)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.998887, 0.022784, 0.032262, 0.0257964)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.999461, 0.00215471, 0.0283119, 0.016495)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.999547, -0.00722854, 0.0265122, 0.0122602)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.999405, 0.00263724, 0.0309667, 0.0149805)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.99881, 0.0209425, 0.0392217, 0.0200231)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.998314, 0.0307833, 0.0436543, 0.0227314)
            }
        }
        KeyframeGroup {
            target: ear01_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(-0.318343, 0.929846, 0.172812, 0.0646573)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(-0.29403, 0.943004, 0.138577, 0.0713144)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(-0.237898, 0.965554, 0.0614933, 0.0856058)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(-0.179432, 0.978636, -0.0161932, 0.0990579)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(-0.152557, 0.981394, -0.0510902, 0.104793)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(-0.16639, 0.980326, -0.0257726, 0.103012)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(-0.202295, 0.973546, 0.0412668, 0.0978883)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(-0.250882, 0.954308, 0.135317, 0.0896913)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(-0.301171, 0.92013, 0.237383, 0.0794158)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(-0.343097, 0.877817, 0.327025, 0.0691114)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(-0.370435, 0.841581, 0.388281, 0.0612983)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(-0.38014, 0.826777, 0.410534, 0.0582609)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(-0.380671, 0.834771, 0.393493, 0.0583951)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(-0.381626, 0.853724, 0.3494, 0.0586189)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(-0.381562, 0.876581, 0.287352, 0.058699)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(-0.379605, 0.897192, 0.218005, 0.0584895)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(-0.37609, 0.911923, 0.153576, 0.058028)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(-0.372315, 0.920182, 0.106457, 0.0575577)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(-0.370919, 0.922681, 0.0882845, 0.0573087)
            }
        }
        KeyframeGroup {
            target: ear01_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(-0.318344, 0.929846, -0.17281, -0.064653)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(-0.3054, 0.93803, -0.150858, -0.0638125)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(-0.276298, 0.953604, -0.101489, -0.0632395)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(-0.246859, 0.965478, -0.0505044, -0.0660479)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(-0.234738, 0.968796, -0.0244297, -0.0757338)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(-0.24291, 0.965538, -0.023633, -0.0904061)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(-0.259866, 0.959449, -0.0295379, -0.105139)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(-0.281841, 0.951217, -0.039746, -0.11905)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(-0.30508, 0.941813, -0.051842, -0.13125)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(-0.325932, 0.932683, -0.0634088, -0.14089)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(-0.340911, 0.925699, -0.0720642, -0.1472)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(-0.346652, 0.922929, -0.075468, -0.149464)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(-0.335259, 0.929013, -0.0608519, -0.144338)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(-0.304912, 0.943099, -0.0226265, -0.130696)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(-0.261482, 0.958298, 0.0304256, -0.111202)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(-0.212303, 0.969107, 0.0883666, -0.089165)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(-0.166236, 0.973577, 0.140757, -0.0685557)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(-0.132429, 0.973591, 0.178116, -0.0534508)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(-0.119366, 0.972882, 0.192313, -0.0476184)
            }
        }
        KeyframeGroup {
            target: ear02_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.49012e-08, 0.300295, 3.21306e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-9.93411e-09, 0.300295, 2.86899e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-4.96705e-09, 0.300295, 2.52492e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-8.88178e-16, 0.300295, 2.18085e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(4.96705e-09, 0.300295, 1.83677e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(9.93411e-09, 0.300296, 1.4927e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(1.49012e-08, 0.300296, 1.14863e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(1.98682e-08, 0.300296, 8.04559e-09)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(2.48353e-08, 0.300296, 4.60487e-09)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(2.98023e-08, 0.300296, 1.16415e-09)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(3.47694e-08, 0.300296, -2.27657e-09)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(3.97364e-08, 0.300296, -5.71729e-09)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(4.47035e-08, 0.300296, -9.158e-09)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(4.96705e-08, 0.300296, -1.25987e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(5.46376e-08, 0.300296, -1.60394e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(5.96046e-08, 0.300296, -1.94802e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(6.45717e-08, 0.300296, -2.29209e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(6.95387e-08, 0.300296, -2.63616e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(7.45058e-08, 0.300296, -2.98023e-08)
            }
        }
        KeyframeGroup {
            target: ear02_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.998944, 0.025999, 0.000413312, -0.0378913)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.999676, 0.00274464, 0.00901994, -0.02365)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.9984, -0.0485218, 0.027965, 0.00780946)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.993152, -0.0995938, 0.0467983, 0.0392371)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.989402, -0.12301, 0.0554196, 0.0536758)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.992284, -0.107173, 0.0431573, 0.0449852)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.997654, -0.0641915, 0.0104693, 0.0213484)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.999306, -0.00378504, -0.0351152, -0.011811)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.993279, 0.0624665, -0.0847523, -0.0480803)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.980747, 0.122197, -0.129204, -0.0806863)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.967687, 0.1645, -0.160512, -0.103723)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.961821, 0.180485, -0.172304, -0.112415)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.966785, 0.17483, -0.156489, -0.101349)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.977783, 0.159725, -0.114912, -0.072273)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.988299, 0.138012, -0.0567221, -0.0316179)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.993443, 0.113324, 0.00742127, 0.0131446)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.992284, 0.0901304, 0.065902, 0.0539086)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.987985, 0.0730845, 0.107859, 0.0831271)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.985572, 0.0664942, 0.123858, 0.094262)
            }
        }
        KeyframeGroup {
            target: ear02_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.300295, -1.92318e-07)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(8.27842e-10, 0.300295, -1.9074e-07)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(1.65568e-09, 0.300295, -1.89162e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(2.48353e-09, 0.300295, -1.87584e-07)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(3.31137e-09, 0.300295, -1.86006e-07)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(4.13921e-09, 0.300295, -1.84428e-07)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(4.96705e-09, 0.300295, -1.8285e-07)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(5.7949e-09, 0.300295, -1.81272e-07)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(6.62274e-09, 0.300295, -1.79694e-07)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(7.45058e-09, 0.300295, -1.78115e-07)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(8.27842e-09, 0.300295, -1.76537e-07)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(9.10627e-09, 0.300295, -1.74959e-07)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(9.93411e-09, 0.300295, -1.73381e-07)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(1.07619e-08, 0.300295, -1.71803e-07)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(1.15898e-08, 0.300295, -1.70225e-07)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(1.24176e-08, 0.300295, -1.68647e-07)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(1.32455e-08, 0.300295, -1.67069e-07)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(1.40733e-08, 0.300295, -1.65491e-07)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(1.49012e-08, 0.300295, -1.63913e-07)
            }
        }
        KeyframeGroup {
            target: ear02_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.998944, 0.025999, -0.000413379, 0.0378913)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.999614, 0.00156025, -0.00145011, 0.0277135)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.998626, -0.0520985, -0.00542234, 0.00162133)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.993763, -0.105452, -0.0136091, -0.033611)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.988537, -0.130009, -0.0274341, -0.0716856)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.98321, -0.130356, -0.0671923, -0.108584)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.97081, -0.128792, -0.143136, -0.143015)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.947197, -0.124088, -0.239889, -0.172837)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.912774, -0.115671, -0.339322, -0.195767)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.874548, -0.103963, -0.424149, -0.210844)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.843796, -0.0899493, -0.481672, -0.218883)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.832074, -0.0743743, -0.503036, -0.221532)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.849597, -0.0574566, -0.480299, -0.21023)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.890208, -0.0393257, -0.417235, -0.1786)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.936859, -0.0206306, -0.323295, -0.131722)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.973596, -0.00309668, -0.214563, -0.0778686)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.9931, 0.0110758, -0.113319, -0.0280935)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.998934, 0.0202328, -0.0408294, 0.00733715)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.999421, 0.0234603, -0.0134232, 0.0206889)
            }
        }
        KeyframeGroup {
            target: fleg01_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.510901, 0.858598, -0.0363669, 0.0216437)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.576059, 0.817243, -0.014479, 0.00778144)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.713182, 0.699642, 0.0365525, -0.0231547)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.830072, 0.548301, 0.0879918, -0.0510268)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.881411, 0.455052, 0.113007, -0.0571952)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.89541, 0.426632, 0.118353, -0.0471062)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.904112, 0.408222, 0.121252, -0.035135)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.909553, 0.397313, 0.120029, -0.0211957)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.913339, 0.391186, 0.112961, -0.00511359)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.91673, 0.387015, 0.0982173, 0.0133652)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.92063, 0.381839, 0.0737926, 0.0345632)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.925436, 0.37243, 0.037454, 0.0588401)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.930696, 0.356345, -0.0148741, 0.0812462)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.933917, 0.334427, -0.0808036, 0.0971021)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.932768, 0.308704, -0.152208, 0.107134)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.926923, 0.282191, -0.220383, 0.112312)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.918325, 0.258603, -0.277148, 0.113987)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.910482, 0.241808, -0.3156, 0.113787)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.907175, 0.235452, -0.329762, 0.113373)
            }
        }
        KeyframeGroup {
            target: fleg01_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.510901, 0.858598, 0.0363646, -0.0216399)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.589072, 0.807164, 0.0149672, -0.0354531)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.751322, 0.655657, -0.0366047, -0.0655001)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.877565, 0.46237, -0.0893117, -0.0900945)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.922475, 0.35569, -0.116868, -0.0941605)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.93094, 0.334565, -0.122289, -0.0803846)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.937489, 0.321811, -0.118951, -0.0583323)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.942207, 0.314968, -0.109714, -0.031678)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.945173, 0.311676, -0.0974109, -0.0041491)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.946804, 0.309723, -0.0849477, 0.0204225)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.947949, 0.30703, -0.0753034, 0.03815)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.949681, 0.301592, -0.0714845, 0.045146)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.952669, 0.292149, -0.0717864, 0.0437871)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.956494, 0.279817, -0.0724091, 0.0397357)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.960548, 0.266137, -0.0732087, 0.0340424)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.964311, 0.252686, -0.0740474, 0.0277656)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.967372, 0.241068, -0.0747958, 0.0219686)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.969415, 0.232908, -0.075332, 0.017714)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.970162, 0.229828, -0.0755374, 0.0160608)
            }
        }
        KeyframeGroup {
            target: fleg02_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-2.04891e-08, 0.622131, -5.82861e-09)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-1.87299e-08, 0.622131, -6.33264e-09)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-1.69708e-08, 0.622131, -6.83667e-09)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-1.52116e-08, 0.622131, -7.3407e-09)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-1.34524e-08, 0.622131, -7.84473e-09)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-1.16933e-08, 0.622131, -8.34876e-09)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-9.93411e-09, 0.622131, -8.85279e-09)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-8.17494e-09, 0.622131, -9.35682e-09)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-6.41578e-09, 0.622131, -9.86086e-09)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-4.65661e-09, 0.622131, -1.03649e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-2.89745e-09, 0.622131, -1.08689e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-1.13828e-09, 0.622131, -1.13729e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(6.20881e-10, 0.622131, -1.1877e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(2.38005e-09, 0.622131, -1.2381e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(4.13921e-09, 0.622131, -1.2885e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(5.89838e-09, 0.622131, -1.33891e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(7.65754e-09, 0.622131, -1.38931e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(9.41671e-09, 0.622131, -1.43971e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(1.11759e-08, 0.622131, -1.49012e-08)
            }
        }
        KeyframeGroup {
            target: fleg02_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.967327, -0.251864, 0.0159089, -0.0243103)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.984348, -0.174672, 0.0117587, -0.0202426)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.999869, 0.0134307, 0.00230747, -0.00869317)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.974293, 0.225046, -0.0067577, 0.00789794)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.928042, 0.371426, -0.00961107, 0.0262302)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.889108, 0.455739, 0.00485658, 0.0420067)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.851743, 0.519757, 0.0396607, 0.053044)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.817523, 0.565928, 0.0870758, 0.0616428)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.787436, 0.596389, 0.139113, 0.0700908)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.762789, 0.613547, 0.187622, 0.0806886)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.74536, 0.620346, 0.22459, 0.0957509)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.736963, 0.619962, 0.242308, 0.117559)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.74805, 0.597341, 0.249845, 0.145545)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.780249, 0.541037, 0.259707, 0.176189)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.820875, 0.459554, 0.269086, 0.206316)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.85816, 0.365634, 0.275596, 0.232208)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.884762, 0.276779, 0.278463, 0.251096)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.899348, 0.211515, 0.278781, 0.262137)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.90392, 0.186363, 0.278516, 0.265755)
            }
        }
        KeyframeGroup {
            target: fleg02_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(4.65661e-09, 0.622131, -9.85256e-09)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(3.15615e-09, 0.622131, -1.09609e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(1.65568e-09, 0.622131, -1.20692e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(1.55221e-10, 0.622131, -1.31775e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-1.34524e-09, 0.622131, -1.42858e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-2.84571e-09, 0.622131, -1.53942e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-4.34617e-09, 0.622131, -1.65025e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-5.84664e-09, 0.622131, -1.76108e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-7.3471e-09, 0.622131, -1.87191e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-8.84756e-09, 0.622131, -1.98274e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-1.0348e-08, 0.622131, -2.09358e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-1.18485e-08, 0.622131, -2.20441e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-1.3349e-08, 0.622131, -2.31524e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-1.48494e-08, 0.622131, -2.42607e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-1.63499e-08, 0.622131, -2.5369e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-1.78504e-08, 0.622131, -2.64774e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-1.93508e-08, 0.622131, -2.75857e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-2.08513e-08, 0.622131, -2.8694e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-2.23517e-08, 0.622131, -2.98023e-08)
            }
        }
        KeyframeGroup {
            target: fleg02_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.967326, -0.251864, -0.0159089, 0.0243103)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.985942, -0.166857, -0.00587068, -0.00658537)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.995863, 0.0438377, 0.0177392, -0.0775878)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.948473, 0.278418, 0.0414461, -0.145477)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.8821, 0.434854, 0.0530467, -0.173169)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.835188, 0.520921, 0.056412, -0.167093)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.797825, 0.581165, 0.0581712, -0.149459)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.771374, 0.621558, 0.0560909, -0.12451)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.754851, 0.647086, 0.0478007, -0.0958918)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.746136, 0.661699, 0.0307894, -0.0669793)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.742485, 0.668592, 0.00247529, -0.0411553)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.740619, 0.670399, -0.0395994, -0.0219494)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.747395, 0.657441, -0.095568, -0.00629797)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.766528, 0.621728, -0.160543, 0.0107129)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.789787, 0.568758, -0.227976, 0.0278868)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.810489, 0.506899, -0.290264, 0.0436797)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.825027, 0.447538, -0.340361, 0.0565238)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.833034, 0.403238, -0.373126, 0.0650356)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.835609, 0.38598, -0.384885, 0.0681159)
            }
        }
        KeyframeGroup {
            target: fleg03_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.78989e-09, 0.503092, 5.00586e-09)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(7.07142e-09, 0.503092, 6.38344e-09)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(1.2353e-08, 0.503092, 7.76102e-09)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(1.76345e-08, 0.503092, 9.1386e-09)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(2.2916e-08, 0.503092, 1.05162e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(2.81976e-08, 0.503092, 1.18938e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(3.34791e-08, 0.503092, 1.32713e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(3.87606e-08, 0.503092, 1.46489e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(4.40422e-08, 0.503092, 1.60265e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(4.93237e-08, 0.503092, 1.74041e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(5.46053e-08, 0.503092, 1.87817e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(5.98868e-08, 0.503092, 2.01593e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(6.51683e-08, 0.503092, 2.15368e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(7.04499e-08, 0.503092, 2.29144e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(7.57314e-08, 0.503092, 2.4292e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(8.10129e-08, 0.503092, 2.56696e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(8.62945e-08, 0.503092, 2.70472e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(9.1576e-08, 0.503092, 2.84247e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(9.68575e-08, 0.503092, 2.98023e-08)
            }
        }
        KeyframeGroup {
            target: fleg03_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.842581, -0.538229, 0.00367509, -0.0187952)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.84554, -0.533781, -0.000574911, -0.0117822)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.852938, -0.521904, -0.00997012, 0.00364838)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.86273, -0.504931, -0.0194681, 0.0190638)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.873482, -0.485564, -0.024036, 0.0260382)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.884066, -0.466225, -0.0241995, 0.0218373)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.893845, -0.447602, -0.0238959, 0.011046)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.902519, -0.430006, -0.0232301, -0.00374673)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.909871, -0.413811, -0.0223112, -0.0199329)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.915837, -0.399465, -0.0212521, -0.034897)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.920508, -0.387478, -0.0201697, -0.0460352)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.924059, -0.378379, -0.0191817, -0.0507639)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.926626, -0.372417, -0.0169231, -0.0488104)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.928377, -0.368964, -0.0125275, -0.042715)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.929487, -0.36721, -0.00685799, -0.0341198)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.930111, -0.366449, -0.000777372, -0.0246705)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.930559, -0.365761, 0.00481228, -0.0160001)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.930735, -0.365458, 0.00891963, -0.00966807)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.930843, -0.365197, 0.0105147, -0.007217)
            }
        }
        KeyframeGroup {
            target: fleg03_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-7.14499e-09, 0.503092, 3.43425e-09)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-1.33708e-08, 0.503092, 2.82954e-09)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-1.95966e-08, 0.503092, 2.22483e-09)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-2.58224e-08, 0.503092, 1.62011e-09)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-3.20482e-08, 0.503092, 1.0154e-09)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-3.8274e-08, 0.503092, 4.10687e-10)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-4.44998e-08, 0.503092, -1.94025e-10)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-5.07256e-08, 0.503092, -7.98738e-10)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-5.69513e-08, 0.503092, -1.40345e-09)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-6.31771e-08, 0.503092, -2.00816e-09)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-6.94029e-08, 0.503092, -2.61288e-09)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-7.56287e-08, 0.503092, -3.21759e-09)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-1.19209e-07, 0.503092, -7.45058e-09)
            }
        }
        KeyframeGroup {
            target: fleg03_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.842581, -0.538229, -0.0036751, 0.0187952)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.858137, -0.513312, 0.00206888, 0.0103848)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.88958, -0.456448, 0.0151693, -0.00850871)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.916751, -0.397404, 0.0292098, -0.0280098)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.927444, -0.370061, 0.0378915, -0.0383019)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.922157, -0.382536, 0.0424826, -0.0385731)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.908083, -0.414566, 0.0478408, -0.0350958)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.886984, -0.457781, 0.0533648, -0.0291271)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.861585, -0.503756, 0.0584435, -0.0220098)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.836215, -0.544613, 0.0625383, -0.0151751)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.816529, -0.573518, 0.0652345, -0.0100611)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.808661, -0.584482, 0.0662063, -0.00805425)
            }
        }
    }
    Timeline {
        startFrame: 0
        endFrame: 7042
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            id: idleAnimation
            duration: 7042
            from: 0
            to: 7042
            running: false
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: bone_001
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.871006, 0.491273, 1.76498e-06, 1.22976e-06)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.871328, 0.4907, 1.76417e-06, 1.23092e-06)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.871337, 0.490686, -6.15149e-05, 0.000120705)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.871345, 0.490671, -0.00024717, 0.000471213)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.871352, 0.490656, -0.000548935, 0.0010409)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.871359, 0.490642, -0.000960547, 0.00181791)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.871363, 0.490628, -0.00147575, 0.00279042)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.871365, 0.490615, -0.00208827, 0.0039466)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.871363, 0.490603, -0.00279185, 0.00527463)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.871356, 0.490592, -0.0035802, 0.00676267)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.871343, 0.490582, -0.00444705, 0.00839891)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.871324, 0.490573, -0.00538609, 0.0101715)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.871297, 0.490567, -0.006391, 0.0120687)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.871261, 0.490562, -0.00745546, 0.0140785)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.871215, 0.49056, -0.00857311, 0.0161891)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.871159, 0.49056, -0.00973763, 0.0183887)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.871092, 0.490562, -0.0109426, 0.0206654)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.871014, 0.490568, -0.0121817, 0.0230073)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.870925, 0.490575, -0.0134485, 0.0254025)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.870823, 0.490586, -0.0147365, 0.027839)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.870711, 0.490599, -0.0160396, 0.0303051)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.870587, 0.490615, -0.0173511, 0.0327887)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.870452, 0.490633, -0.0186648, 0.0352778)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.870307, 0.490654, -0.0199743, 0.0377607)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.870153, 0.490676, -0.0212732, 0.0402253)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.869991, 0.490701, -0.0225553, 0.0426596)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.869879, 0.490626, -0.0238193, 0.0450491)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.869761, 0.490553, -0.0250555, 0.047386)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.869639, 0.490481, -0.0262623, 0.0496678)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.869513, 0.49041, -0.0274394, 0.0518939)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.869383, 0.490339, -0.0285866, 0.0540636)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.869251, 0.490269, -0.0297035, 0.0561762)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.869117, 0.4902, -0.0307898, 0.0582312)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.868982, 0.490132, -0.0318451, 0.0602278)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.868848, 0.490059, -0.0328693, 0.0621653)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.868714, 0.489987, -0.0338621, 0.0640433)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.868581, 0.489915, -0.034823, 0.0658608)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.868449, 0.489843, -0.0357517, 0.0676176)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.868319, 0.48977, -0.0366481, 0.0693127)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.868192, 0.489696, -0.0375117, 0.0709458)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.868067, 0.489623, -0.0383423, 0.072516)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.867947, 0.489548, -0.0391396, 0.0740228)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.867817, 0.489496, -0.0399013, 0.0754667)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.867692, 0.489444, -0.040629, 0.076846)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.867572, 0.48939, -0.0413225, 0.07816)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.867458, 0.489335, -0.0419816, 0.0794081)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.86735, 0.489279, -0.042606, 0.0805898)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.867249, 0.489221, -0.0431953, 0.0817043)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.867156, 0.489161, -0.0437495, 0.0827511)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.86707, 0.4891, -0.044268, 0.0837295)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.866993, 0.489036, -0.0447507, 0.084639)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.866924, 0.488971, -0.0451973, 0.0854788)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.866798, 0.489021, -0.0455958, 0.0862546)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.866681, 0.48907, -0.0459574, 0.0869597)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.866574, 0.489116, -0.0462819, 0.0875934)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.866477, 0.489159, -0.046569, 0.0881551)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.866391, 0.4892, -0.0468185, 0.0886442)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.866315, 0.489239, -0.04703, 0.0890599)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.86625, 0.489275, -0.0472032, 0.0894018)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.866196, 0.489308, -0.0473379, 0.089669)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.866154, 0.489339, -0.0474339, 0.0898611)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.865836, 0.489866, -0.0474587, 0.0900431)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.865867, 0.489879, -0.0473052, 0.089751)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.865983, 0.489872, -0.0468631, 0.0888986)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.866175, 0.489847, -0.0461525, 0.0875258)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.866434, 0.489807, -0.0451932, 0.0856726)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.866749, 0.489753, -0.0440047, 0.0833788)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.86711, 0.489688, -0.0426068, 0.0806843)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.867507, 0.489615, -0.0410191, 0.0776292)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.867928, 0.489537, -0.0392614, 0.0742531)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.868224, 0.489702, -0.0373335, 0.0706069)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.868525, 0.489866, -0.0352779, 0.0667187)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.868821, 0.490032, -0.0331152, 0.0626287)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.869105, 0.490201, -0.0308663, 0.0583769)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.869394, 0.490329, -0.028555, 0.0540019)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.869658, 0.490464, -0.0261992, 0.0495457)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.86989, 0.490606, -0.0238204, 0.0450485)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.870089, 0.490756, -0.0214401, 0.0405506)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.870363, 0.490715, -0.0190882, 0.036088)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.8706, 0.490682, -0.0167761, 0.0317062)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.870798, 0.490659, -0.0145255, 0.0274455)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.87096, 0.490644, -0.0123582, 0.023346)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.871086, 0.490637, -0.010296, 0.0194477)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.871181, 0.490637, -0.0083604, 0.0157907)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.871247, 0.490644, -0.00657301, 0.012415)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.871289, 0.490657, -0.00495522, 0.00936024)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.871311, 0.490674, -0.00352837, 0.00666635)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.871318, 0.490694, -0.00231368, 0.00437308)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.871314, 0.490717, -0.00133225, 0.00252015)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.871304, 0.490741, -0.000605177, 0.00114735)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.871291, 0.490766, -0.000153486, 0.000294416)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.871277, 0.490792, 1.7643e-06, 1.23073e-06)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(0.871006, 0.491273, 1.76498e-06, 1.22976e-06)
            }
        }
        KeyframeGroup {
            target: bone_002
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.88614, -0.463418, 1.64602e-10, -2.09918e-06)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.886165, -0.463366, 0.000692068, -0.00141795)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.886177, -0.463308, 0.00266844, -0.00546205)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.886141, -0.463228, 0.00578045, -0.0118312)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.886016, -0.463107, 0.00987987, -0.0202228)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.885755, -0.462924, 0.0148178, -0.0303321)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.885312, -0.462659, 0.0204438, -0.041851)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.884652, -0.462295, 0.0266056, -0.0544667)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.883752, -0.461821, 0.0331489, -0.067862)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.882605, -0.461235, 0.0399181, -0.081717)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.881223, -0.460542, 0.0467568, -0.0957101)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.87964, -0.459756, 0.0535088, -0.109521)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.877907, -0.458901, 0.060019, -0.122831)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.876093, -0.45801, 0.0661347, -0.135329)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.874286, -0.45712, 0.0717054, -0.14671)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.872582, -0.456278, 0.0765837, -0.156673)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.871086, -0.455531, 0.0806247, -0.164927)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.869905, -0.454927, 0.0836854, -0.171183)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.869117, -0.454562, 0.0856327, -0.175147)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.868838, -0.45443, 0.0863138, -0.176534)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.868863, -0.454382, 0.086304, -0.176539)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.870795, -0.45301, 0.0842674, -0.171458)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.875673, -0.449183, 0.0792566, -0.158589)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.88211, -0.443328, 0.0729268, -0.141506)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.888865, -0.435984, 0.0669839, -0.123898)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.89495, -0.427857, 0.0631923, -0.109587)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.900126, -0.419839, 0.0611996, -0.0988076)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.904731, -0.412284, 0.0594496, -0.0891604)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.908825, -0.4052, 0.0579278, -0.0805848)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.912463, -0.39859, 0.0566183, -0.0730151)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.915693, -0.392452, 0.0555041, -0.0663819)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.918558, -0.38678, 0.0545674, -0.0606134)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.921097, -0.381565, 0.0537899, -0.0556357)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.923344, -0.376792, 0.0531529, -0.0513735)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.925328, -0.372448, 0.0526372, -0.0477507)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.927078, -0.368514, 0.0522232, -0.0446906)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.928616, -0.364973, 0.0518916, -0.0421161)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.929966, -0.361804, 0.0516226, -0.0399499)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.931146, -0.358987, 0.0513963, -0.0381148)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.932176, -0.356501, 0.0511929, -0.0365334)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.933071, -0.354323, 0.0509925, -0.0351286)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.933847, -0.352431, 0.0507752, -0.0338233)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.93452, -0.350802, 0.0505211, -0.0325405)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.935102, -0.349414, 0.0502101, -0.0312032)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.935607, -0.348243, 0.0498223, -0.0297345)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.936048, -0.347266, 0.0493377, -0.0280576)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.936435, -0.346459, 0.048736, -0.0260955)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.936779, -0.345799, 0.0479971, -0.0237713)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.937089, -0.345261, 0.0471008, -0.0210078)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.937363, -0.344844, 0.046027, -0.0177267)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.937634, -0.344452, 0.0447538, -0.0138539)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.937876, -0.344136, 0.0432675, -0.00932994)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.938098, -0.34384, 0.0415774, -0.00418803)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.938299, -0.343536, 0.0397012, 0.00151761)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.93846, -0.343243, 0.0376563, 0.00773442)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.938595, -0.342892, 0.0354604, 0.0144059)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.938697, -0.342476, 0.0331312, 0.021478)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.938765, -0.341971, 0.0306865, 0.0288954)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.938799, -0.341356, 0.0281445, 0.0366028)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.938802, -0.340609, 0.0255231, 0.0445449)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.938777, -0.33971, 0.0228407, 0.0526661)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.938728, -0.338638, 0.0201154, 0.0609107)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.938662, -0.337374, 0.0173656, 0.0692234)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.938587, -0.335898, 0.0146095, 0.0775492)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.938517, -0.334189, 0.0118113, 0.0858141)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.938456, -0.332236, 0.00909485, 0.0940009)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.938417, -0.330024, 0.00648589, 0.102058)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.938421, -0.327527, 0.00388649, 0.109891)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.938481, -0.324733, 0.00137112, 0.117469)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.938614, -0.321627, -0.00104257, 0.124738)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.938835, -0.318193, -0.00333705, 0.131646)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.939164, -0.314415, -0.00549497, 0.138144)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.939619, -0.310277, -0.00749915, 0.14418)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.940218, -0.305764, -0.00933247, 0.149704)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.940979, -0.300858, -0.0109779, 0.154666)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.94192, -0.295544, -0.0124184, 0.159015)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.943057, -0.289803, -0.013637, 0.162702)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.944405, -0.283616, -0.0146165, 0.165676)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.945976, -0.276962, -0.0153397, 0.167885)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.947783, -0.269822, -0.0157892, 0.169277)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.949832, -0.262172, -0.0159472, 0.169798)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.952538, -0.252875, -0.0154987, 0.168774)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.956086, -0.241235, -0.0142556, 0.165835)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.960137, -0.227899, -0.0123912, 0.161383)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.964377, -0.213528, -0.0100809, 0.155826)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.968528, -0.198799, -0.0075015, 0.149586)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.972366, -0.184406, -0.00483174, 0.143092)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.975718, -0.171051, -0.00225069, 0.136784)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(0.978463, -0.159442, 6.32638e-05, 0.131105)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.980514, -0.150285, 0.00193315, 0.126501)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.981805, -0.144279, 0.0031823, 0.123416)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.982259, -0.142123, 0.00363908, 0.12229)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.982252, -0.142169, 0.00363333, 0.12229)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.982312, -0.142189, 0.00381141, 0.121785)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.982426, -0.142613, 0.0043008, 0.120343)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.982535, -0.143734, 0.00506609, 0.11807)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.982566, -0.145894, 0.00606654, 0.115072)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.982443, -0.149436, 0.00726186, 0.111452)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.982077, -0.154706, 0.00861204, 0.107312)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.981366, -0.162053, 0.0100772, 0.102749)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.980185, -0.171831, 0.0116174, 0.0978589)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.978378, -0.184397, 0.0131921, 0.0927349)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.97575, -0.200107, 0.0147595, 0.0874679)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.972066, -0.219266, 0.0162538, 0.0821304)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.967395, -0.240712, 0.0175248, 0.0767879)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.962077, -0.262586, 0.0184038, 0.071534)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.956621, -0.283032, 0.0187245, 0.0664796)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.951689, -0.300233, 0.0183265, 0.0617473)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.947368, -0.314499, 0.0174769, 0.0572627)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.943267, -0.327381, 0.0165539, 0.0528748)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.939415, -0.338962, 0.0155684, 0.0485949)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.935833, -0.34933, 0.0145307, 0.0444328)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.932532, -0.358567, 0.0134508, 0.0403972)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.929519, -0.366757, 0.0123384, 0.0364959)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.926791, -0.37398, 0.011203, 0.032736)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.924344, -0.380315, 0.0100538, 0.0291241)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.922167, -0.385838, 0.00889986, 0.0256663)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.920246, -0.390623, 0.00775013, 0.0223689)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.918566, -0.394744, 0.00661345, 0.0192376)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.917107, -0.398272, 0.00549856, 0.0162784)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.915848, -0.401275, 0.00441419, 0.013497)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.914766, -0.403822, 0.00336902, 0.0108995)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.913839, -0.40598, 0.00237175, 0.00849175)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.913042, -0.407815, 0.00143107, 0.00628)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.912349, -0.409392, 0.00055572, 0.00427048)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.911733, -0.410776, -0.000245535, 0.00246957)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.911169, -0.41203, -0.000963879, 0.000883831)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.91063, -0.41322, -0.00159046, -0.000480095)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.910088, -0.414407, -0.00211638, -0.00161541)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.909515, -0.415656, -0.00253267, -0.0025152)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.908883, -0.417029, -0.00283035, -0.00317246)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.908164, -0.418588, -0.00300035, -0.00358007)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.907328, -0.420396, -0.00303362, -0.00373089)
            }
            Keyframe {
                frame: 6291.67
                value: Qt.quaternion(0.906352, -0.422497, -0.00297509, -0.00371896)
            }
            Keyframe {
                frame: 6333.33
                value: Qt.quaternion(0.905246, -0.424863, -0.00287886, -0.00364774)
            }
            Keyframe {
                frame: 6375
                value: Qt.quaternion(0.904028, -0.42745, -0.00274961, -0.00352407)
            }
            Keyframe {
                frame: 6416.67
                value: Qt.quaternion(0.902717, -0.430215, -0.00259197, -0.00335477)
            }
            Keyframe {
                frame: 6458.33
                value: Qt.quaternion(0.901332, -0.433111, -0.00241063, -0.0031467)
            }
            Keyframe {
                frame: 6500
                value: Qt.quaternion(0.899892, -0.436097, -0.00221025, -0.0029067)
            }
            Keyframe {
                frame: 6541.67
                value: Qt.quaternion(0.898419, -0.439128, -0.00199549, -0.00264163)
            }
            Keyframe {
                frame: 6583.33
                value: Qt.quaternion(0.896932, -0.442159, -0.00177104, -0.00235833)
            }
            Keyframe {
                frame: 6625
                value: Qt.quaternion(0.895453, -0.445149, -0.00154157, -0.00206368)
            }
            Keyframe {
                frame: 6666.67
                value: Qt.quaternion(0.894004, -0.448055, -0.00131176, -0.00176453)
            }
            Keyframe {
                frame: 6708.33
                value: Qt.quaternion(0.892607, -0.450832, -0.00108629, -0.00146776)
            }
            Keyframe {
                frame: 6750
                value: Qt.quaternion(0.891285, -0.45344, -0.000869844, -0.00118021)
            }
            Keyframe {
                frame: 6791.67
                value: Qt.quaternion(0.890063, -0.455836, -0.000667095, -0.000908768)
            }
            Keyframe {
                frame: 6833.33
                value: Qt.quaternion(0.888963, -0.457978, -0.000482721, -0.00066028)
            }
            Keyframe {
                frame: 6875
                value: Qt.quaternion(0.888009, -0.459825, -0.000321395, -0.000441605)
            }
            Keyframe {
                frame: 6916.67
                value: Qt.quaternion(0.887227, -0.461334, -0.00018779, -0.000259598)
            }
            Keyframe {
                frame: 6958.33
                value: Qt.quaternion(0.886638, -0.462464, -8.65761e-05, -0.000121112)
            }
            Keyframe {
                frame: 7000
                value: Qt.quaternion(0.886389, -0.462941, -2.2431e-05, -3.29884e-05)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(0.88614, -0.463418, 1.64602e-10, -2.09918e-06)
            }
        }
        KeyframeGroup {
            target: bone_003
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.78894, 0.614471, 2.88202e-13, 2.78352e-06)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.789768, 0.613405, 0.000622787, -0.0007946)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.792123, 0.610349, 0.00240625, -0.00306878)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.795794, 0.605508, 0.00522408, -0.00664411)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.800563, 0.599074, 0.00895029, -0.0113453)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.806204, 0.591241, 0.013458, -0.0169958)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.812492, 0.582204, 0.0186186, -0.0234169)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.819209, 0.572172, 0.0243012, -0.030427)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.826144, 0.561366, 0.0303726, -0.0378417)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.833103, 0.550023, 0.0366984, -0.0454748)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.839908, 0.538395, 0.0431428, -0.0531391)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.846403, 0.52675, 0.0495709, -0.0606481)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.852454, 0.515369, 0.0558488, -0.0678172)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.857945, 0.504539, 0.0618454, -0.0744653)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.862785, 0.49456, 0.0674328, -0.0804151)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.866893, 0.485729, 0.0724863, -0.0854935)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.870205, 0.478347, 0.0768848, -0.0895312)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.872657, 0.472713, 0.0805089, -0.0923612)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.874183, 0.469119, 0.0832407, -0.0938167)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.874705, 0.467854, 0.0849609, -0.0937289)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.866461, 0.483268, 0.0864721, -0.0906579)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.850438, 0.511514, 0.0879777, -0.0858374)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.841437, 0.526489, 0.0886284, -0.0832987)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.846732, 0.517519, 0.0892234, -0.0851965)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.858053, 0.497567, 0.0904978, -0.0893404)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.868907, 0.477344, 0.0917229, -0.0934357)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.873681, 0.468071, 0.0922629, -0.0952793)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.867171, 0.480278, 0.0925919, -0.0936676)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.854703, 0.502741, 0.0927843, -0.0901478)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.847948, 0.514809, 0.0917636, -0.0868109)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.848431, 0.514735, 0.0899416, -0.0843998)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.848862, 0.514661, 0.0882908, -0.0822355)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.849247, 0.514589, 0.0867774, -0.0802895)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.849597, 0.51452, 0.0853669, -0.0785332)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.849916, 0.514454, 0.0840248, -0.0769382)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.850213, 0.514392, 0.0827163, -0.0754757)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.850493, 0.514335, 0.0814065, -0.0741171)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.850763, 0.514284, 0.0800604, -0.0728335)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.851027, 0.51424, 0.0786427, -0.071596)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.85129, 0.514204, 0.0771182, -0.0703759)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.851549, 0.514194, 0.0752796, -0.0692917)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.851799, 0.514224, 0.0729689, -0.0684621)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.852041, 0.514287, 0.070225, -0.0678579)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.852274, 0.514372, 0.0670863, -0.0674493)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.852946, 0.513735, 0.0636492, -0.0671517)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.853683, 0.512981, 0.0599032, -0.0669882)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.854477, 0.512119, 0.0558859, -0.0669328)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.85532, 0.511153, 0.0516349, -0.0669592)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.856203, 0.510093, 0.047188, -0.0670413)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.85712, 0.508943, 0.0425833, -0.0671529)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.858062, 0.507712, 0.0378588, -0.0672677)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.859023, 0.506409, 0.0330529, -0.0673596)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.859998, 0.50504, 0.028204, -0.0674026)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.86098, 0.503616, 0.0233505, -0.0673704)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.861966, 0.502145, 0.0185311, -0.0672371)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.862952, 0.500637, 0.0137844, -0.0669766)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.863934, 0.499102, 0.00914885, -0.0665631)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.86491, 0.497551, 0.00466316, -0.0659707)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.865877, 0.495993, 0.000365834, -0.0651736)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.866834, 0.49444, -0.00370465, -0.064146)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.867779, 0.492902, -0.00750987, -0.0628622)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.86871, 0.49139, -0.0110115, -0.0612965)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.869626, 0.489917, -0.0141713, -0.0594232)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.870526, 0.488491, -0.0169512, -0.0572167)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.871407, 0.487124, -0.0193129, -0.0546511)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.872261, 0.485818, -0.0213727, -0.0518216)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.873079, 0.484566, -0.0232769, -0.048848)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.873863, 0.483369, -0.0250322, -0.0457419)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.87461, 0.482223, -0.0266453, -0.0425147)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.875323, 0.481128, -0.0281231, -0.0391781)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.876, 0.480081, -0.0294723, -0.0357436)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.876641, 0.479082, -0.0306996, -0.0322228)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.877246, 0.478129, -0.0318117, -0.0286273)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.877816, 0.47722, -0.0328155, -0.0249687)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.878341, 0.476369, -0.033718, -0.0212579)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.878848, 0.47553, -0.0345249, -0.0175084)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.879302, 0.47476, -0.0352443, -0.0137295)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.879737, 0.474001, -0.0358817, -0.00993506)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.880122, 0.473307, -0.0364449, -0.00613445)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.880487, 0.472623, -0.0369399, -0.00234166)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.880804, 0.472001, -0.0373739, 0.00143406)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.881103, 0.471387, -0.0377535, 0.00517871)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.881355, 0.470833, -0.0380854, 0.00888303)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.881591, 0.470285, -0.0383767, 0.012533)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.881782, 0.469796, -0.0386335, 0.0161196)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.881959, 0.469311, -0.0388636, 0.0196287)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.882094, 0.468884, -0.0390725, 0.0230512)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.882218, 0.468458, -0.0392685, 0.0263731)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.882304, 0.46809, -0.0394567, 0.0295855)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.882381, 0.467722, -0.0396457, 0.0326743)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.882415, 0.467426, -0.0398396, 0.0356313)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.882446, 0.467127, -0.0400481, 0.0384418)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.882475, 0.466826, -0.0402782, 0.0410945)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.882457, 0.466613, -0.0405324, 0.0435819)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.882442, 0.466394, -0.0408218, 0.0458886)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.882432, 0.466171, -0.0411535, 0.0480032)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.882361, 0.466072, -0.041527, 0.0499205)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.882299, 0.465965, -0.0419562, 0.051623)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.882248, 0.465851, -0.0424482, 0.0530992)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.882211, 0.465727, -0.0430098, 0.0543379)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.882188, 0.465593, -0.043648, 0.0553275)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.882182, 0.465447, -0.0444167, 0.0560499)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(0.882427, 0.464827, -0.0454378, 0.0565212)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.883175, 0.463218, -0.0466861, 0.0570238)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.884681, 0.460104, -0.0482786, 0.0575664)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.887174, 0.454971, -0.0502607, 0.058289)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.902858, 0.422551, -0.0526562, 0.0593806)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.926381, 0.367678, -0.0546741, 0.0603452)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.937449, 0.338274, -0.0554601, 0.0606925)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.927203, 0.366604, -0.0494029, 0.0587855)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.905882, 0.418464, -0.0370084, 0.0538125)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.893399, 0.445931, -0.0273419, 0.0472866)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.896103, 0.441236, -0.0238432, 0.0417265)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.901446, 0.430597, -0.0231034, 0.0380566)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.906572, 0.419845, -0.0241036, 0.0357156)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.908846, 0.414929, -0.0258275, 0.0341503)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.907184, 0.418514, -0.0276368, 0.033159)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.902593, 0.428225, -0.0295273, 0.0328173)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.895619, 0.442482, -0.0314319, 0.0329907)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.886821, 0.459692, -0.0332809, 0.0335455)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.876844, 0.478267, -0.0350043, 0.0343491)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.86646, 0.496658, -0.0365351, 0.035272)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.856567, 0.513374, -0.0378112, 0.0361884)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.848175, 0.526999, -0.0387762, 0.0369777)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.84235, 0.536179, -0.0393787, 0.037523)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.840156, 0.539583, -0.0395684, 0.0377092)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.840161, 0.539606, -0.0393229, 0.0375312)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.84019, 0.539639, -0.0386735, 0.037082)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.840241, 0.539679, -0.0376557, 0.0363857)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.84031, 0.539725, -0.0363051, 0.0354658)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.840393, 0.539776, -0.0346567, 0.0343458)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.840487, 0.539831, -0.0327456, 0.0330492)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.840588, 0.539886, -0.0306069, 0.0315993)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.840692, 0.539941, -0.0282753, 0.0300192)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.840797, 0.539994, -0.0257857, 0.0283323)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.840899, 0.540044, -0.023173, 0.0265618)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.840995, 0.54009, -0.0204721, 0.0247311)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.841084, 0.540131, -0.017718, 0.0228636)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.841164, 0.540166, -0.0149456, 0.0209825)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.841234, 0.540196, -0.0121899, 0.0191115)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.841293, 0.54022, -0.00948606, 0.0172741)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.841341, 0.54024, -0.00686917, 0.0154939)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.841378, 0.540254, -0.00437436, 0.0137945)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.841404, 0.540264, -0.00203679, 0.0121998)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.841422, 0.540272, 0.000108384, 0.0107334)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.841431, 0.540278, 0.00202599, 0.00941903)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.841434, 0.540283, 0.00368088, 0.00828061)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.841432, 0.540289, 0.0050379, 0.00734188)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.841426, 0.540298, 0.00606197, 0.00662659)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.841417, 0.540309, 0.00671802, 0.00615845)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.841407, 0.540324, 0.00697099, 0.00596117)
            }
            Keyframe {
                frame: 6291.67
                value: Qt.quaternion(0.841396, 0.540342, 0.00694675, 0.00587024)
            }
            Keyframe {
                frame: 6333.33
                value: Qt.quaternion(0.840258, 0.542114, 0.00681597, 0.00569639)
            }
            Keyframe {
                frame: 6375
                value: Qt.quaternion(0.838466, 0.544888, 0.00658703, 0.00545409)
            }
            Keyframe {
                frame: 6416.67
                value: Qt.quaternion(0.836095, 0.548524, 0.0062726, 0.00515275)
            }
            Keyframe {
                frame: 6458.33
                value: Qt.quaternion(0.833224, 0.552883, 0.00588536, 0.00480174)
            }
            Keyframe {
                frame: 6500
                value: Qt.quaternion(0.829928, 0.557826, 0.005438, 0.00441048)
            }
            Keyframe {
                frame: 6541.67
                value: Qt.quaternion(0.826288, 0.563212, 0.00494325, 0.0039884)
            }
            Keyframe {
                frame: 6583.33
                value: Qt.quaternion(0.822384, 0.568905, 0.00441391, 0.00354501)
            }
            Keyframe {
                frame: 6625
                value: Qt.quaternion(0.818302, 0.574767, 0.00386283, 0.00308986)
            }
            Keyframe {
                frame: 6666.67
                value: Qt.quaternion(0.814131, 0.580665, 0.00330292, 0.00263251)
            }
            Keyframe {
                frame: 6708.33
                value: Qt.quaternion(0.809965, 0.586468, 0.00274711, 0.00218259)
            }
            Keyframe {
                frame: 6750
                value: Qt.quaternion(0.805899, 0.592046, 0.00220836, 0.00174972)
            }
            Keyframe {
                frame: 6791.67
                value: Qt.quaternion(0.802034, 0.597274, 0.00169962, 0.00134352)
            }
            Keyframe {
                frame: 6833.33
                value: Qt.quaternion(0.798473, 0.602028, 0.00123383, 0.000973587)
            }
            Keyframe {
                frame: 6875
                value: Qt.quaternion(0.795322, 0.606187, 0.000823894, 0.000649516)
            }
            Keyframe {
                frame: 6916.67
                value: Qt.quaternion(0.792686, 0.60963, 0.000482699, 0.000380865)
            }
            Keyframe {
                frame: 6958.33
                value: Qt.quaternion(0.790674, 0.612238, 0.000223094, 0.000177175)
            }
            Keyframe {
                frame: 7000
                value: Qt.quaternion(0.78939, 0.613892, 5.79161e-05, 4.79718e-05)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(0.78894, 0.614471, 2.88202e-13, 2.78352e-06)
            }
        }
        KeyframeGroup {
            target: ear01_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(-0.318343, 0.929846, 0.172812, 0.0646573)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(-0.317803, 0.930092, 0.172542, 0.0644905)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(-0.317183, 0.930479, 0.171836, 0.063843)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(-0.316493, 0.930988, 0.170745, 0.0627709)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(-0.315743, 0.931599, 0.169319, 0.0613308)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(-0.314943, 0.932292, 0.167608, 0.0595791)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(-0.314104, 0.933049, 0.165663, 0.0575727)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(-0.312766, 0.934007, 0.163506, 0.0554508)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(-0.311407, 0.93499, 0.161217, 0.0531855)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(-0.310039, 0.93598, 0.15885, 0.0508336)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(-0.308612, 0.936981, 0.156451, 0.048461)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(-0.307194, 0.937958, 0.154076, 0.0461148)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(-0.305792, 0.938899, 0.151778, 0.0438514)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(-0.304572, 0.93974, 0.149616, 0.0417024)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(-0.303384, 0.940522, 0.147636, 0.0397496)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(-0.302237, 0.941234, 0.145891, 0.0380495)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(-0.302002, 0.941589, 0.144468, 0.0365254)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(-0.301823, 0.941856, 0.143385, 0.0353684)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(-0.301706, 0.942026, 0.142695, 0.0346341)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(-0.301658, 0.942087, 0.142453, 0.0343779)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(-0.302103, 0.94121, 0.146721, 0.036476)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(-0.306666, 0.937937, 0.156733, 0.0408039)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(-0.311741, 0.93408, 0.167999, 0.045695)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(-0.315692, 0.930905, 0.176903, 0.0495945)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(-0.31792, 0.928832, 0.182916, 0.0523493)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(-0.319809, 0.927412, 0.186372, 0.0538076)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(-0.319347, 0.927323, 0.187406, 0.0544875)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(-0.318222, 0.928503, 0.183978, 0.0526225)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(-0.314271, 0.93127, 0.177719, 0.0488504)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(-0.312826, 0.932471, 0.175048, 0.0446824)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(-0.311748, 0.932768, 0.176258, 0.0411201)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(-0.310627, 0.933052, 0.177585, 0.0372627)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(-0.310657, 0.932925, 0.17903, 0.0330515)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(-0.31067, 0.932776, 0.180497, 0.0288768)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(-0.310683, 0.932605, 0.181947, 0.0249055)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(-0.310718, 0.93241, 0.183338, 0.021304)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(-0.310798, 0.932193, 0.184631, 0.0182379)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(-0.31095, 0.931956, 0.185784, 0.0158726)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(-0.3112, 0.931703, 0.186756, 0.014373)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(-0.312089, 0.931262, 0.187514, 0.0138002)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(-0.313091, 0.930725, 0.188495, 0.0139601)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(-0.314175, 0.930018, 0.19014, 0.0144299)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(-0.315129, 0.929219, 0.192391, 0.0152302)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(-0.31616, 0.928265, 0.195197, 0.0162953)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(-0.317263, 0.927162, 0.198505, 0.017602)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(-0.318435, 0.925918, 0.20226, 0.0191266)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(-0.319415, 0.924627, 0.206402, 0.0209032)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(-0.32046, 0.923208, 0.210881, 0.0228525)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(-0.321565, 0.921668, 0.215643, 0.024951)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(-0.322726, 0.920016, 0.220634, 0.0271753)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(-0.323938, 0.918264, 0.225799, 0.0295023)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(-0.325196, 0.916423, 0.231083, 0.0319092)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(-0.326415, 0.914533, 0.236429, 0.034394)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(-0.327666, 0.912585, 0.241787, 0.0369158)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(-0.328941, 0.910594, 0.247102, 0.0394535)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(-0.330231, 0.908581, 0.252321, 0.0419871)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(-0.331526, 0.906565, 0.25739, 0.0444972)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(-0.332815, 0.904572, 0.262256, 0.0469653)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(-0.334088, 0.902623, 0.266868, 0.0493736)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(-0.335678, 0.900618, 0.271192, 0.0516009)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(-0.337224, 0.89871, 0.275159, 0.0537322)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(-0.338715, 0.896929, 0.278716, 0.0557521)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(-0.340136, 0.895303, 0.281811, 0.0576455)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(-0.341974, 0.89367, 0.284426, 0.0592387)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(-0.343714, 0.892249, 0.286479, 0.0606727)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(-0.345389, 0.890967, 0.288169, 0.0619957)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(-0.347253, 0.889644, 0.28975, 0.0631956)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(-0.349091, 0.888364, 0.291212, 0.064342)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(-0.350982, 0.887096, 0.292565, 0.0654088)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(-0.352848, 0.885868, 0.293809, 0.0664221)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(-0.354742, 0.88466, 0.294953, 0.0673637)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(-0.356608, 0.883503, 0.295961, 0.0682661)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(-0.358483, 0.882349, 0.296949, 0.0690754)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(-0.360328, 0.881256, 0.297779, 0.069858)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(-0.362156, 0.880176, 0.298588, 0.0705593)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(-0.36394, 0.879219, 0.299058, 0.0713124)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(-0.36568, 0.878289, 0.299505, 0.071997)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(-0.367402, 0.877374, 0.299932, 0.0726054)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(-0.369054, 0.876497, 0.300334, 0.0731572)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(-0.370688, 0.875636, 0.300716, 0.0736352)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(-0.372226, 0.874825, 0.301071, 0.0740687)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(-0.373747, 0.87403, 0.301406, 0.0744311)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(-0.375144, 0.873297, 0.301711, 0.0747614)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(-0.376526, 0.872581, 0.301996, 0.0750234)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(-0.377756, 0.871941, 0.30225, 0.075266)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(-0.378972, 0.871316, 0.302483, 0.0754433)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(-0.379962, 0.870801, 0.302679, 0.0756305)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(-0.380939, 0.870302, 0.302855, 0.0757553)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(-0.381904, 0.869818, 0.303013, 0.075819)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(-0.383043, 0.869267, 0.303094, 0.0760787)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(-0.384126, 0.868793, 0.303085, 0.0760586)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(-0.384285, 0.868725, 0.303047, 0.0761822)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(-0.38443, 0.868661, 0.303051, 0.076166)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(-0.380357, 0.872759, 0.297568, 0.0712334)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(-0.370011, 0.882682, 0.283727, 0.0588562)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(-0.356238, 0.894871, 0.265475, 0.0426956)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(-0.342134, 0.906225, 0.246979, 0.0264974)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(-0.331086, 0.914371, 0.232616, 0.0140399)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(-0.326623, 0.917484, 0.226845, 0.00906283)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(-0.33018, 0.915088, 0.231202, 0.0118338)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(-0.338604, 0.909207, 0.241556, 0.0184424)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(-0.348549, 0.90188, 0.253836, 0.0263262)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(-0.35678, 0.89549, 0.26405, 0.0329222)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(-0.360203, 0.892743, 0.268311, 0.0356845)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(-0.357006, 0.895331, 0.264242, 0.0332548)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(-0.34922, 0.90145, 0.254325, 0.0274203)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(-0.339587, 0.908675, 0.242024, 0.0203709)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(-0.330962, 0.914849, 0.230893, 0.0143121)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(-0.326312, 0.91813, 0.22456, 0.0114523)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(-0.325154, 0.919154, 0.222049, 0.0111706)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(-0.324128, 0.920026, 0.219907, 0.0115345)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(-0.323214, 0.92077, 0.218084, 0.0124625)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(-0.323163, 0.921135, 0.216536, 0.0136923)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(-0.323186, 0.921414, 0.215202, 0.0153275)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(-0.323265, 0.921625, 0.214029, 0.0172875)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(-0.323381, 0.921787, 0.212962, 0.0194921)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(-0.323518, 0.921919, 0.211951, 0.0218609)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(-0.323658, 0.92204, 0.210941, 0.0243138)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(-0.323786, 0.922169, 0.209883, 0.0267702)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(-0.32389, 0.922321, 0.208733, 0.0291632)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(-0.323967, 0.922497, 0.207493, 0.0314791)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(-0.324019, 0.922697, 0.20617, 0.0337179)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(-0.324046, 0.922916, 0.204775, 0.0358793)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(-0.324051, 0.923153, 0.203317, 0.0379633)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(-0.324033, 0.923406, 0.201805, 0.0399697)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(-0.323995, 0.923673, 0.200249, 0.0418983)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(-0.323938, 0.923951, 0.198657, 0.0437489)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(-0.323864, 0.924238, 0.197039, 0.0455214)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(-0.323772, 0.924532, 0.195403, 0.0472157)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(-0.323666, 0.924831, 0.19376, 0.0488314)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(-0.323545, 0.925134, 0.192118, 0.0503685)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(-0.323202, 0.92551, 0.190474, 0.05187)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(-0.322848, 0.925886, 0.188849, 0.0532916)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(-0.322484, 0.926259, 0.187251, 0.054633)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(-0.322112, 0.926628, 0.18569, 0.055894)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(-0.321733, 0.92699, 0.184175, 0.0570742)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(-0.321349, 0.927344, 0.182714, 0.0581735)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(-0.320961, 0.927688, 0.181317, 0.0591914)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(-0.32084, 0.927927, 0.18001, 0.0600756)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(-0.320718, 0.928154, 0.178785, 0.0608786)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(-0.320596, 0.928366, 0.177651, 0.0616)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(-0.320475, 0.928563, 0.176617, 0.0622396)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(-0.320355, 0.928745, 0.175685, 0.062778)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(-0.320243, 0.928901, 0.174882, 0.0632716)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(-0.320131, 0.929043, 0.174195, 0.0636467)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(-0.32003, 0.929157, 0.173653, 0.0639715)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(-0.319927, 0.92926, 0.173231, 0.0641349)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(-0.319754, 0.929374, 0.172879, 0.064292)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(-0.318343, 0.929846, 0.172812, 0.0646573)
            }
        }
        KeyframeGroup {
            target: ear01_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(-0.318344, 0.929846, -0.17281, -0.064653)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(-0.317858, 0.929839, -0.173604, -0.0650164)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(-0.317563, 0.929441, -0.175945, -0.0658508)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(-0.317444, 0.928683, -0.179653, -0.0670972)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(-0.317488, 0.927591, -0.184545, -0.0686927)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(-0.316923, 0.926451, -0.190383, -0.0707296)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(-0.316498, 0.925028, -0.197038, -0.072997)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(-0.315795, 0.92349, -0.204296, -0.0755216)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(-0.315204, 0.921733, -0.212005, -0.0781581)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(-0.314409, 0.919902, -0.219955, -0.0809172)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(-0.313681, 0.917946, -0.227987, -0.0836768)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(-0.312858, 0.91597, -0.235905, -0.0864178)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(-0.312039, 0.913996, -0.243539, -0.0890586)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(-0.311266, 0.912073, -0.250714, -0.0915327)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(-0.310418, 0.91031, -0.257243, -0.093819)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(-0.309784, 0.908681, -0.26298, -0.095784)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(-0.308985, 0.907389, -0.267712, -0.0974847)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(-0.308787, 0.90625, -0.271349, -0.0986437)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(-0.308332, 0.90563, -0.273627, -0.099465)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(-0.307575, 0.905615, -0.274365, -0.0999129)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(-0.303968, 0.91026, -0.263764, -0.0972559)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(-0.297426, 0.918425, -0.243983, -0.0922289)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(-0.295762, 0.922005, -0.233467, -0.0890181)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(-0.297295, 0.919572, -0.239734, -0.0923631)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(-0.300534, 0.914051, -0.253453, -0.0997526)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(-0.303962, 0.908182, -0.267111, -0.107073)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(-0.305703, 0.905358, -0.273311, -0.110336)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(-0.304983, 0.907089, -0.268887, -0.108969)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(-0.303487, 0.910293, -0.260673, -0.106356)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(-0.302782, 0.911954, -0.25637, -0.104583)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(-0.303032, 0.911751, -0.257055, -0.103941)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(-0.303439, 0.911239, -0.258568, -0.10349)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(-0.303905, 0.910572, -0.260614, -0.10286)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(-0.304404, 0.909802, -0.263004, -0.102114)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(-0.304966, 0.908915, -0.265613, -0.101579)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(-0.305533, 0.908018, -0.2682, -0.101101)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(-0.306076, 0.907179, -0.270565, -0.100693)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(-0.306563, 0.906469, -0.272507, -0.100367)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(-0.306949, 0.90598, -0.27381, -0.100057)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(-0.307248, 0.905726, -0.274329, -0.100012)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(-0.307574, 0.905799, -0.273799, -0.099801)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(-0.307699, 0.905942, -0.27318, -0.0998162)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(-0.307772, 0.906184, -0.272316, -0.0997523)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(-0.307409, 0.906634, -0.271207, -0.0998107)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(-0.307018, 0.907144, -0.269919, -0.0998695)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(-0.306603, 0.907706, -0.268476, -0.099929)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(-0.306167, 0.90831, -0.266902, -0.0999895)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(-0.305716, 0.908948, -0.265219, -0.100052)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(-0.305252, 0.909611, -0.263451, -0.100116)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(-0.30478, 0.910289, -0.261621, -0.100184)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(-0.304304, 0.910975, -0.259753, -0.100257)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(-0.303827, 0.91166, -0.25787, -0.100336)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(-0.303354, 0.912336, -0.255996, -0.100422)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(-0.302888, 0.912996, -0.254153, -0.100518)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(-0.302433, 0.91363, -0.252366, -0.100626)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(-0.301993, 0.914232, -0.250658, -0.100748)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(-0.301572, 0.914795, -0.249052, -0.100885)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(-0.301172, 0.915311, -0.247573, -0.101039)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(-0.299576, 0.916167, -0.246117, -0.10158)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(-0.297996, 0.916977, -0.244815, -0.102066)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(-0.296008, 0.917811, -0.243721, -0.102965)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(-0.29404, 0.918588, -0.242824, -0.103796)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(-0.291694, 0.919428, -0.242102, -0.104658)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(-0.289113, 0.920225, -0.241829, -0.10544)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(-0.286077, 0.921156, -0.2415, -0.106341)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(-0.282464, 0.922253, -0.241102, -0.107391)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(-0.27841, 0.923324, -0.241135, -0.108693)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(-0.273899, 0.92446, -0.241308, -0.110107)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(-0.268972, 0.925646, -0.24161, -0.111619)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(-0.263674, 0.926866, -0.242026, -0.113216)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(-0.258047, 0.928108, -0.242546, -0.114886)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(-0.252135, 0.929356, -0.243156, -0.116617)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(-0.245983, 0.930599, -0.243846, -0.118396)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(-0.239634, 0.931823, -0.244603, -0.12021)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(-0.233134, 0.933019, -0.245415, -0.122047)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(-0.22653, 0.934176, -0.246272, -0.123894)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(-0.219867, 0.935286, -0.247162, -0.12574)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(-0.213192, 0.936341, -0.248075, -0.127571)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(-0.206552, 0.937335, -0.249, -0.129378)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(-0.199995, 0.938264, -0.249928, -0.131146)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(-0.193564, 0.939127, -0.250847, -0.132849)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(-0.187318, 0.939912, -0.251754, -0.134525)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(-0.181291, 0.940632, -0.252631, -0.136096)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(-0.175545, 0.941273, -0.253478, -0.137617)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(-0.170111, 0.941851, -0.254278, -0.139)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(-0.165053, 0.942354, -0.25503, -0.140308)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(-0.160418, 0.942783, -0.255726, -0.141528)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(-0.156218, 0.943176, -0.256344, -0.142486)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(-0.152535, 0.943502, -0.256891, -0.14333)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(-0.149416, 0.943765, -0.257357, -0.144046)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(-0.147252, 0.943915, -0.257787, -0.144526)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(-0.145057, 0.944113, -0.258014, -0.145041)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(-0.143516, 0.944235, -0.258248, -0.145369)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(-0.153823, 0.942698, -0.25949, -0.142561)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(-0.180167, 0.938239, -0.262542, -0.135347)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(-0.215519, 0.931106, -0.266313, -0.12518)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(-0.253023, 0.921939, -0.26995, -0.114608)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(-0.285789, 0.91262, -0.272716, -0.105236)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(-0.307575, 0.905615, -0.274365, -0.0999129)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(-0.318819, 0.900736, -0.277992, -0.098739)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(-0.32505, 0.89613, -0.285204, -0.099762)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(-0.326167, 0.892811, -0.293298, -0.102374)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(-0.327021, 0.889993, -0.300135, -0.104353)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(-0.327018, 0.888925, -0.302976, -0.105245)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(-0.325889, 0.890126, -0.300873, -0.104626)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(-0.320702, 0.894028, -0.295091, -0.103852)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(-0.314601, 0.898932, -0.287107, -0.102556)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(-0.309693, 0.903599, -0.2783, -0.100742)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(-0.309269, 0.906492, -0.270195, -0.0980789)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(-0.30919, 0.908743, -0.263383, -0.0960086)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(-0.309414, 0.910393, -0.257995, -0.0942684)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(-0.30959, 0.911648, -0.25381, -0.0929114)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(-0.309969, 0.9125, -0.250666, -0.0918152)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(-0.310508, 0.913032, -0.248371, -0.0909367)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(-0.310594, 0.913518, -0.246674, -0.0903838)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(-0.310763, 0.913835, -0.245439, -0.0899507)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(-0.310981, 0.914056, -0.244471, -0.0895876)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(-0.311212, 0.91425, -0.243575, -0.0892434)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(-0.311423, 0.914486, -0.242557, -0.0888669)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(-0.311587, 0.914817, -0.241259, -0.0884158)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(-0.311895, 0.915181, -0.239687, -0.0878354)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(-0.31216, 0.915634, -0.237844, -0.0871822)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(-0.312386, 0.916165, -0.235755, -0.0864616)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(-0.31258, 0.916764, -0.233444, -0.085679)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(-0.312915, 0.917364, -0.23095, -0.0847969)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(-0.313227, 0.918011, -0.22828, -0.0838648)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(-0.313521, 0.918696, -0.225458, -0.0828883)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(-0.313802, 0.91941, -0.222508, -0.0818732)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(-0.314127, 0.920126, -0.219458, -0.080813)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(-0.314448, 0.920852, -0.216328, -0.0797269)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(-0.314768, 0.921581, -0.21314, -0.0786213)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(-0.315072, 0.92231, -0.209918, -0.0775075)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(-0.315384, 0.923027, -0.206687, -0.0763876)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(-0.315706, 0.923723, -0.20347, -0.0752685)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(-0.315956, 0.924422, -0.200285, -0.0741761)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(-0.316224, 0.925087, -0.197162, -0.0730985)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(-0.316511, 0.925714, -0.194126, -0.0720432)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(-0.31682, 0.926296, -0.1912, -0.0710179)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(-0.316969, 0.926892, -0.188394, -0.0700679)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(-0.317144, 0.927435, -0.185746, -0.0691623)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(-0.317348, 0.927918, -0.18328, -0.0683089)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(-0.317583, 0.92834, -0.181019, -0.0675156)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(-0.317851, 0.928694, -0.178988, -0.0667903)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(-0.317676, 0.929142, -0.177175, -0.0662322)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(-0.317536, 0.929515, -0.17564, -0.0657561)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(-0.317434, 0.929809, -0.174405, -0.0653701)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(-0.317374, 0.93002, -0.173495, -0.0650821)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(-0.317355, 0.930144, -0.172933, -0.0649001)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(-0.318344, 0.929846, -0.17281, -0.064653)
            }
        }
        KeyframeGroup {
            target: ear02_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.998944, 0.025999, 0.000413312, -0.0378913)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.998975, 0.0257191, 5.16617e-05, -0.0372397)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.999063, 0.0249197, -0.000980862, -0.0353795)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.99919, 0.0236615, -0.00260566, -0.0324516)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.999338, 0.0220048, -0.00474428, -0.0285972)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.999486, 0.0200103, -0.00731807, -0.0239574)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.999616, 0.0177387, -0.0102482, -0.0186738)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.99971, 0.015251, -0.0134555, -0.0128886)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.999756, 0.0126085, -0.0168606, -0.00674464)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.999743, 0.00987274, -0.0203838, -0.00038524)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.99967, 0.00710549, -0.0239456, 0.00604591)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.999536, 0.00436871, -0.0274662, 0.012405)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.99935, 0.00172419, -0.0308661, 0.0185483)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.999123, -0.00076625, -0.0340663, 0.0243326)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.998872, -0.00304108, -0.036988, 0.0296151)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.998617, -0.00503899, -0.0395528, 0.0342538)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.998381, -0.00669888, -0.0416829, 0.0381071)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.998187, -0.00795983, -0.0433006, 0.041034)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.998057, -0.0087611, -0.0443283, 0.0428936)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.998011, -0.00904167, -0.0446882, 0.043545)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.998616, -0.00417081, -0.0421657, 0.0311491)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.999309, 0.0067671, -0.0364063, 0.00332878)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.999045, 0.0182505, -0.0301534, -0.0258284)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.998313, 0.0259143, -0.0256239, -0.0451982)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.997769, 0.029876, -0.0229116, -0.0551297)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.997544, 0.03136, -0.0215992, -0.0587815)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.997514, 0.0315856, -0.0212616, -0.0593048)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.998234, 0.0253512, -0.0233745, -0.0483651)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.999101, 0.0136963, -0.0286976, -0.0280394)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.999187, 0.00724949, -0.0357473, -0.0171843)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.998885, 0.00704855, -0.0433346, -0.0173719)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.998514, 0.00702449, -0.0510846, -0.0176108)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.998085, 0.00716068, -0.058768, -0.0179422)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.997612, 0.00744061, -0.0661567, -0.0184071)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.997117, 0.00784768, -0.0730235, -0.0190469)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.996629, 0.00836538, -0.0791429, -0.0199028)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.996179, 0.00897721, -0.0842907, -0.0210166)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.995799, 0.00966688, -0.0882436, -0.0224299)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.995523, 0.0104182, -0.0907785, -0.0241847)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.995378, 0.0112149, -0.0916717, -0.0263235)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.995299, 0.0120122, -0.0915577, -0.0292103)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.995197, 0.0127794, -0.0912324, -0.0331201)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.995061, 0.0135219, -0.0907131, -0.0379613)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.994882, 0.0142451, -0.0900171, -0.0436423)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.994645, 0.0149546, -0.0891618, -0.0500708)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.994342, 0.0156557, -0.0881646, -0.0571539)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.99396, 0.0163537, -0.0870432, -0.0647984)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.993493, 0.0170542, -0.0858156, -0.0729105)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.992935, 0.0177625, -0.0844998, -0.081396)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.992281, 0.0184839, -0.0831145, -0.0901606)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.991532, 0.0192241, -0.0816785, -0.0991099)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.990692, 0.0199885, -0.0802109, -0.10815)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.989766, 0.0207826, -0.078731, -0.117187)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.988765, 0.0216122, -0.0772585, -0.126128)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.987701, 0.022483, -0.0758131, -0.134881)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.986592, 0.0234006, -0.0744147, -0.143355)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.985457, 0.0243713, -0.0730834, -0.15146)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.984316, 0.0254008, -0.0718393, -0.159108)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.983195, 0.0264954, -0.0707022, -0.166211)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.982119, 0.0276616, -0.0696924, -0.172683)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.981115, 0.0289056, -0.06883, -0.178438)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.98021, 0.0302342, -0.0681349, -0.183393)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.97943, 0.0316541, -0.0676272, -0.187461)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.978803, 0.0331724, -0.0673269, -0.190558)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.978352, 0.0347963, -0.0672541, -0.192598)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.977978, 0.0365178, -0.067628, -0.194041)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.977568, 0.0383177, -0.0686251, -0.195405)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.977123, 0.0401864, -0.0702011, -0.196692)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.976643, 0.0421143, -0.0723117, -0.197904)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.976128, 0.0440917, -0.0749123, -0.199042)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.975579, 0.0461087, -0.0779583, -0.200106)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.974994, 0.0481556, -0.0814047, -0.201099)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.974374, 0.0502225, -0.0852066, -0.202022)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.973719, 0.0522995, -0.0893188, -0.202875)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.973029, 0.0543768, -0.0936963, -0.203661)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.972307, 0.0564444, -0.0982937, -0.204381)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.971553, 0.0584924, -0.103066, -0.205037)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.970772, 0.060511, -0.107967, -0.20563)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.969966, 0.0624905, -0.112952, -0.206164)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.96914, 0.0644211, -0.117976, -0.206639)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.9683, 0.0662932, -0.122994, -0.207059)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.967452, 0.0680972, -0.12796, -0.207426)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.966604, 0.0698238, -0.132831, -0.207743)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.965764, 0.0714636, -0.137562, -0.208014)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.964941, 0.0730074, -0.142108, -0.208242)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.964144, 0.0744461, -0.146426, -0.20843)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.963385, 0.0757707, -0.150473, -0.208583)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.962673, 0.0769723, -0.154204, -0.208702)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.962021, 0.0780423, -0.157577, -0.208794)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.961439, 0.0789716, -0.160549, -0.208861)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.960939, 0.0797517, -0.163077, -0.208908)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.960532, 0.0803738, -0.165118, -0.208937)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.960244, 0.0808412, -0.166623, -0.208885)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.96004, 0.0811089, -0.167567, -0.208962)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.959976, 0.0812042, -0.16789, -0.208964)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.962577, 0.0775895, -0.164795, -0.200666)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.968737, 0.0685298, -0.156582, -0.179817)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.975977, 0.0567222, -0.144872, -0.152523)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.982379, 0.0449359, -0.131412, -0.125075)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.986902, 0.0359791, -0.118073, -0.103871)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.98917, 0.0326456, -0.106758, -0.0952883)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.989434, 0.0351712, -0.0987781, -0.100127)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(0.988456, 0.0406047, -0.0937453, -0.111884)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.986742, 0.0469427, -0.0909746, -0.125941)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.985014, 0.0521907, -0.089793, -0.137701)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.984217, 0.0543763, -0.089544, -0.142626)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.987166, 0.0457071, -0.093598, -0.121053)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.991165, 0.0295163, -0.100996, -0.0807533)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.992514, 0.0207765, -0.104897, -0.0589933)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.987303, 0.0384906, -0.101335, -0.116116)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.978814, 0.0561817, -0.0944673, -0.17275)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.979744, 0.055743, -0.0892174, -0.170393)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.981287, 0.054094, -0.0851199, -0.164027)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.983229, 0.0515079, -0.0819986, -0.154543)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.985353, 0.0482593, -0.079677, -0.142836)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.987459, 0.0446259, -0.0779804, -0.129814)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.989387, 0.0408832, -0.0767836, -0.116391)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.991037, 0.0373353, -0.0757544, -0.103503)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.992338, 0.034242, -0.0749386, -0.0920655)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.993281, 0.0319016, -0.0740557, -0.0830119)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.993866, 0.030595, -0.0729684, -0.0772619)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.994267, 0.0299304, -0.0715677, -0.0735908)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.994654, 0.0293257, -0.0698683, -0.0701568)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.995027, 0.0287783, -0.0678946, -0.0669514)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.995387, 0.0282853, -0.0656711, -0.0639667)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.995732, 0.0278442, -0.0632218, -0.0611944)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.996062, 0.0274523, -0.0605711, -0.0586265)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.996377, 0.0271069, -0.0577431, -0.0562548)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.996674, 0.0268054, -0.0547619, -0.0540715)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.996954, 0.0265451, -0.0516519, -0.0520684)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.997215, 0.0263234, -0.048437, -0.0502379)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.997457, 0.0261376, -0.0451416, -0.0485719)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.997679, 0.0259852, -0.0417899, -0.0470626)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.997881, 0.0258634, -0.0384062, -0.0457024)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.998064, 0.0257699, -0.0350147, -0.0444832)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.998226, 0.0257018, -0.0316398, -0.0433975)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.998369, 0.0256567, -0.0283057, -0.0424374)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.998492, 0.025632, -0.025037, -0.0415954)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.998597, 0.025625, -0.021858, -0.0408636)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.998685, 0.0256333, -0.018793, -0.0402344)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.998756, 0.0256543, -0.0158664, -0.0397)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.998813, 0.0256853, -0.0131028, -0.039253)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.998857, 0.0257239, -0.0105264, -0.0388854)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.998889, 0.0257744, -0.00816202, -0.0385898)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.998912, 0.0258137, -0.00603318, -0.0383585)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.998927, 0.0258682, -0.00416544, -0.0381837)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.998936, 0.0259109, -0.00258229, -0.038058)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.998941, 0.0259412, -0.00130814, -0.0379736)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.998942, 0.0259765, -0.000368705, -0.0379403)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.998943, 0.0259982, 0.000213642, -0.0378978)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.998943, 0.0260054, 0.000412769, -0.0379024)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(0.998944, 0.025999, 0.000413312, -0.0378913)
            }
        }
        KeyframeGroup {
            target: ear02_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.998944, 0.025999, -0.000413379, 0.0378913)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.998889, 0.0259774, -0.00045022, 0.0393273)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.998719, 0.0259627, -0.000548116, 0.0434283)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.998417, 0.025956, -0.000690637, 0.0498846)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.997956, 0.0259587, -0.000861126, 0.0583869)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.997305, 0.0259224, -0.0010458, 0.068624)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.996436, 0.0258688, -0.00122717, 0.0802819)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.995327, 0.0257947, -0.00138892, 0.0930434)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.99397, 0.0256971, -0.00151462, 0.106588)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.992371, 0.0255737, -0.00158788, 0.120593)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.990554, 0.0254224, -0.00159243, 0.134735)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.98856, 0.0252416, -0.001512, 0.148693)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.986448, 0.0250304, -0.00133046, 0.162148)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.984294, 0.024788, -0.00103188, 0.174787)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.982186, 0.0245144, -0.000600386, 0.186302)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.980227, 0.0242094, -2.01414e-05, 0.19639)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.978522, 0.0238732, 0.000724692, 0.204755)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.977179, 0.0235058, 0.00165016, 0.211104)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.976305, 0.0231073, 0.00277262, 0.215144)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.975993, 0.0226769, 0.00410885, 0.216581)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.979559, 0.0154552, 0.00791745, 0.200407)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.985324, 0.00249179, 0.0134683, 0.170144)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.987962, -0.00444052, 0.0163009, 0.153772)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.986611, -0.00243022, 0.0159751, 0.162287)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.983366, 0.00199452, 0.0152538, 0.18098)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.979748, 0.00641803, 0.0145268, 0.199602)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.977982, 0.00842695, 0.0141947, 0.208038)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.981715, 0.00160184, 0.0157185, 0.189699)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.987597, -0.0111098, 0.0192292, 0.155434)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.990143, -0.0180218, 0.0231658, 0.13695)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.98984, -0.0177363, 0.0265296, 0.138556)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.98917, -0.0166797, 0.02937, 0.142835)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.98818, -0.0149621, 0.0317536, 0.149226)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.986914, -0.0126931, 0.0337468, 0.157164)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.985424, -0.00998313, 0.0354161, 0.166087)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.983778, -0.00694252, 0.036828, 0.175432)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.982062, -0.0036821, 0.0380504, 0.184644)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.980384, -0.000312338, 0.0391518, 0.193168)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.978872, 0.00305692, 0.0402017, 0.200458)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.977667, 0.00631656, 0.0412702, 0.20597)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.976695, 0.00937598, 0.0423847, 0.210198)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.975784, 0.0122224, 0.0435231, 0.214013)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.974937, 0.0148645, 0.0446819, 0.217439)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.974154, 0.017311, 0.0458577, 0.2205)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.973435, 0.0195709, 0.0470471, 0.223221)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.972778, 0.021653, 0.0482466, 0.225625)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.97218, 0.0235664, 0.0494528, 0.227737)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.97164, 0.0253202, 0.0506621, 0.229581)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.971154, 0.0269234, 0.0518713, 0.231181)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.970718, 0.0283851, 0.0530766, 0.23256)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.970327, 0.0297145, 0.0542747, 0.233743)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.969979, 0.0309207, 0.0554621, 0.234754)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.969666, 0.0320129, 0.0566353, 0.235616)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.969386, 0.0330002, 0.0577907, 0.236353)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.969131, 0.0338916, 0.0589248, 0.236988)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.968898, 0.0346965, 0.0600343, 0.237547)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.968681, 0.0354239, 0.0611155, 0.23805)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.968473, 0.0360829, 0.0621649, 0.238524)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.96827, 0.0366827, 0.0631791, 0.23899)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.968065, 0.0372324, 0.0641547, 0.239473)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.967854, 0.0377411, 0.0650879, 0.239996)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.967629, 0.038218, 0.0659754, 0.240583)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.967386, 0.0386721, 0.0668137, 0.241257)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.967118, 0.0391126, 0.0675993, 0.242041)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.966819, 0.0395486, 0.0683285, 0.242959)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.966483, 0.0399872, 0.0690035, 0.244028)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.966113, 0.0404287, 0.06963, 0.245242)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.965709, 0.0408719, 0.0702096, 0.246587)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.965276, 0.0413155, 0.0707442, 0.248052)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.964816, 0.0417582, 0.0712355, 0.249623)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.964332, 0.0421988, 0.0716854, 0.251287)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.963825, 0.0426361, 0.0720955, 0.253032)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.9633, 0.0430686, 0.0724676, 0.254845)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.962761, 0.0435001, 0.0727862, 0.256714)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.962207, 0.0439148, 0.0731052, 0.258623)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.961646, 0.0443405, 0.0733216, 0.260567)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.961078, 0.0447485, 0.0735365, 0.262525)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.960506, 0.0451383, 0.0737486, 0.264486)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.959933, 0.0455092, 0.0739569, 0.266436)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.959363, 0.0458606, 0.0741601, 0.268364)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.958804, 0.0462129, 0.074286, 0.270262)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.958255, 0.046545, 0.0744045, 0.272112)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.957722, 0.0468621, 0.074496, 0.273905)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.957207, 0.0471608, 0.0745694, 0.275625)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.956716, 0.0474399, 0.0746266, 0.277262)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.956252, 0.0476982, 0.0746695, 0.278802)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.95582, 0.0479345, 0.0747, 0.280233)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.955423, 0.0481475, 0.0747199, 0.281543)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.955065, 0.048336, 0.0747311, 0.282718)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.954751, 0.0484989, 0.0747355, 0.283747)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.954485, 0.0486324, 0.074743, 0.284616)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.954272, 0.0487428, 0.0747311, 0.285315)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.954016, 0.0488619, 0.0747462, 0.286145)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.953984, 0.0488857, 0.07472, 0.286256)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.956703, 0.0448597, 0.0746108, 0.277741)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.963119, 0.0347654, 0.074176, 0.256302)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.970624, 0.0216047, 0.0732561, 0.228159)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.977174, 0.0084449, 0.0717404, 0.199784)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.981594, -0.00163087, 0.0695852, 0.177843)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.983331, -0.00558156, 0.0667862, 0.169024)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.982691, -0.00135849, 0.0634698, 0.174037)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(0.980669, 0.00854726, 0.0600675, 0.186028)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.977862, 0.0203311, 0.0570351, 0.200298)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.975219, 0.030181, 0.0548516, 0.212201)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.974033, 0.0343041, 0.0540131, 0.217175)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.978962, 0.0210153, 0.0586529, 0.194295)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.986189, -0.00374775, 0.0671676, 0.151347)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.989024, -0.0170718, 0.0716787, 0.128069)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.981548, 0.00739067, 0.0659293, 0.179337)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.97095, 0.0319053, 0.057886, 0.229973)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.97188, 0.0312749, 0.0542442, 0.227002)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.973943, 0.0292735, 0.0515314, 0.218913)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.976774, 0.0262346, 0.0496024, 0.206793)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.979999, 0.0224935, 0.0483129, 0.191733)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.983276, 0.0183896, 0.0475211, 0.174846)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.98633, 0.0142668, 0.0470876, 0.157267)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.988964, 0.0104706, 0.0468765, 0.140151)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.99107, 0.0073467, 0.0467556, 0.124659)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.992607, 0.00523821, 0.0465957, 0.111952)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.993576, 0.00448615, 0.0462696, 0.103181)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.994227, 0.00459338, 0.0456949, 0.0969675)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.994812, 0.00482962, 0.044886, 0.0911606)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.995338, 0.00518549, 0.0438609, 0.0857468)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.995809, 0.00565166, 0.0426376, 0.0807125)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.996232, 0.00621876, 0.0412343, 0.0760443)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.996611, 0.00687752, 0.0396687, 0.0717284)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.996951, 0.0076186, 0.0379587, 0.0677511)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.997254, 0.00843264, 0.0361223, 0.0640985)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.997524, 0.00931039, 0.0341772, 0.0607568)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.997763, 0.0102425, 0.0321412, 0.0577122)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.997974, 0.0112197, 0.030032, 0.0549507)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.998159, 0.0122327, 0.0278673, 0.0524585)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.99832, 0.0132722, 0.0256649, 0.0502217)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.998459, 0.0143289, 0.0234424, 0.0482264)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.998576, 0.0153935, 0.0212175, 0.0464588)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.998675, 0.0164568, 0.0190079, 0.0449051)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.998756, 0.0175095, 0.0168312, 0.0435515)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.998821, 0.0185422, 0.0147053, 0.0423841)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.998872, 0.0195457, 0.0126477, 0.0413892)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.99891, 0.0205107, 0.0106761, 0.0405529)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.998937, 0.0214279, 0.00880829, 0.0398616)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.998954, 0.022288, 0.00706187, 0.0393014)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.998963, 0.0230818, 0.00545459, 0.0388586)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.998966, 0.0237999, 0.00400411, 0.0385195)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.998965, 0.024433, 0.00272819, 0.0382702)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.998961, 0.024972, 0.00164449, 0.0380971)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.998955, 0.0254074, 0.000770752, 0.0379865)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.998949, 0.0257298, 0.000124717, 0.0379244)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.998944, 0.0259302, -0.000274986, 0.0379327)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.998942, 0.025999, -0.000412265, 0.037934)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(0.998944, 0.025999, -0.000413379, 0.0378913)
            }
        }
        KeyframeGroup {
            target: fleg01_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.510901, 0.858598, -0.0363669, 0.0216437)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.509701, 0.85931, -0.0363536, 0.0216844)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.509638, 0.859352, -0.0362943, 0.0215873)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.509577, 0.859401, -0.0361739, 0.02127)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.509516, 0.859458, -0.0359809, 0.020757)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.509456, 0.859521, -0.0357204, 0.0200626)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.509396, 0.859589, -0.0353976, 0.0192013)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.509336, 0.859663, -0.0350178, 0.0181876)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.509275, 0.85974, -0.0345863, 0.0170361)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.509213, 0.85982, -0.0341081, 0.0157612)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.509149, 0.859903, -0.0335883, 0.0143769)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.509083, 0.859987, -0.033032, 0.0128972)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.509015, 0.860071, -0.0324442, 0.0113362)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.508701, 0.8603, -0.0318276, 0.00971768)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.508384, 0.860528, -0.0311913, 0.00804703)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.508064, 0.860754, -0.0305409, 0.00633908)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.507741, 0.860979, -0.0298818, 0.00460863)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.507415, 0.861202, -0.0292197, 0.00287051)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.507086, 0.861421, -0.0285601, 0.00113951)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.506787, 0.861619, -0.0279087, -0.000570633)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.506486, 0.861814, -0.027271, -0.00224402)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.506184, 0.862005, -0.0266527, -0.00386591)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.50588, 0.862193, -0.0260585, -0.00542416)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.505575, 0.862378, -0.0254889, -0.00691733)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.50527, 0.862561, -0.0249436, -0.00834669)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.504964, 0.86274, -0.0244223, -0.00971341)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.50475, 0.862864, -0.0239232, -0.0110213)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.504535, 0.862985, -0.023447, -0.0122689)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.504322, 0.863105, -0.0229933, -0.0134574)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.504108, 0.863223, -0.0225615, -0.0145882)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.503895, 0.863339, -0.0221514, -0.0156623)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.503682, 0.863454, -0.0217625, -0.016681)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.50347, 0.863568, -0.0213943, -0.0176456)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.503259, 0.86368, -0.0210465, -0.0185572)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.503049, 0.863791, -0.0207186, -0.0194171)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.502839, 0.863902, -0.0204102, -0.0202265)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.502842, 0.863889, -0.0201156, -0.0209915)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.502845, 0.863876, -0.0198393, -0.0217082)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.502849, 0.863863, -0.0195808, -0.022378)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.502855, 0.863848, -0.0193398, -0.023002)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.502862, 0.863834, -0.0191156, -0.0235815)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.50287, 0.863818, -0.018908, -0.0241176)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.50288, 0.863803, -0.0187165, -0.0246117)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.502891, 0.863788, -0.0185407, -0.0250648)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.502903, 0.863772, -0.0183801, -0.0254782)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.502916, 0.863756, -0.0182343, -0.0258532)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.502931, 0.86374, -0.0181007, -0.0261897)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.502946, 0.863724, -0.0179825, -0.0264998)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.502963, 0.863708, -0.0178687, -0.0267871)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.50298, 0.863692, -0.0177655, -0.027056)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.502998, 0.863676, -0.017667, -0.027304)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.503016, 0.863659, -0.0175783, -0.0275349)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.503035, 0.863643, -0.0174939, -0.0277465)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.503055, 0.863627, -0.0174186, -0.0279425)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.503075, 0.863611, -0.0173462, -0.0281201)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.503097, 0.863594, -0.0172821, -0.0282833)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.503118, 0.863578, -0.0172259, -0.0284329)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.50314, 0.863562, -0.0171711, -0.0285659)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.503163, 0.863546, -0.0171235, -0.0286867)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.503186, 0.863529, -0.0170826, -0.0287958)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.50321, 0.863513, -0.0170415, -0.02889)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.503234, 0.863497, -0.0170063, -0.0289739)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.503258, 0.863481, -0.0169768, -0.0290483)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.503283, 0.863465, -0.0169525, -0.0291136)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.503308, 0.863449, -0.0169331, -0.0291707)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.503334, 0.863433, -0.0169073, -0.0292139)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.50336, 0.863416, -0.0168857, -0.0292501)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.503386, 0.8634, -0.0168677, -0.0292801)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.503439, 0.863369, -0.0168411, -0.0293239)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.50352, 0.863321, -0.016819, -0.0293591)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.503766, 0.863176, -0.0167927, -0.0293965)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.503931, 0.86308, -0.0167834, -0.0294074)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.503966, 0.863064, -0.0169048, -0.0291991)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.504016, 0.863049, -0.0171163, -0.0286554)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.504069, 0.863034, -0.0173689, -0.0280062)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.504118, 0.863019, -0.0175803, -0.0274624)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.504153, 0.863003, -0.0176969, -0.0272513)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.504429, 0.862843, -0.0176412, -0.0272295)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.504462, 0.862827, -0.017721, -0.0270815)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.504508, 0.862811, -0.0179009, -0.0266185)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.504564, 0.862795, -0.0181909, -0.0258729)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.504628, 0.862778, -0.0185822, -0.0248663)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.504701, 0.86276, -0.0190661, -0.0236202)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.50478, 0.86274, -0.0196339, -0.0221563)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.504863, 0.862718, -0.0202767, -0.0204961)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.50495, 0.862692, -0.0209859, -0.0186612)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.505038, 0.862662, -0.0217525, -0.0166731)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.505126, 0.862628, -0.0225679, -0.0145535)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.505213, 0.862589, -0.0234233, -0.012324)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.505297, 0.862545, -0.0243102, -0.0100064)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.505378, 0.862496, -0.0252198, -0.00762233)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.505858, 0.862205, -0.0261414, -0.00520589)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.506332, 0.861909, -0.027071, -0.00276749)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.506801, 0.861608, -0.0280004, -0.000329018)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.507264, 0.861303, -0.0289214, 0.00208763)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.507721, 0.860994, -0.0298256, 0.00446059)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.508122, 0.860711, -0.0307044, 0.00676971)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.508518, 0.860426, -0.0315499, 0.00899141)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.508909, 0.860141, -0.032354, 0.0111038)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.509294, 0.859856, -0.0331086, 0.0130849)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.509677, 0.859572, -0.0338057, 0.0149128)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.509724, 0.859489, -0.034431, 0.016579)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.509769, 0.85941, -0.0349817, 0.0180487)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.509813, 0.859338, -0.0354501, 0.0193)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.509857, 0.859273, -0.0358284, 0.0203108)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.509901, 0.859217, -0.0361087, 0.0210594)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.509947, 0.859171, -0.0362832, 0.0215238)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.509994, 0.859136, -0.0363688, 0.0216674)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(0.510901, 0.858598, -0.0363669, 0.0216437)
            }
        }
        KeyframeGroup {
            target: fleg01_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.510901, 0.858598, 0.0363646, -0.0216399)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.511836, 0.85804, 0.0363882, -0.0216002)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.511889, 0.857996, 0.0366372, -0.0216854)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.511948, 0.857924, 0.0373586, -0.021936)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.512013, 0.857823, 0.0385177, -0.0223386)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.512084, 0.857694, 0.0400797, -0.0228796)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.512163, 0.857537, 0.0420099, -0.0235458)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.512248, 0.857351, 0.0442737, -0.0243235)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.512341, 0.857134, 0.0468361, -0.0251996)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.51244, 0.856886, 0.0496624, -0.0261606)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.512548, 0.856607, 0.0527178, -0.0271931)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.512663, 0.856297, 0.0559674, -0.0282836)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.512785, 0.855956, 0.0593765, -0.0294189)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.512915, 0.855585, 0.0629096, -0.0305859)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.513052, 0.855185, 0.0665316, -0.0317722)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.513196, 0.85476, 0.0702071, -0.0329649)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.513345, 0.854312, 0.0739006, -0.0341518)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.513499, 0.853846, 0.0775767, -0.0353205)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.513657, 0.853366, 0.0811999, -0.0364587)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.513817, 0.852879, 0.0847348, -0.0375544)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.513978, 0.852389, 0.0881459, -0.0385958)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.514699, 0.851566, 0.091424, -0.0395105)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.515417, 0.850755, 0.0945156, -0.0403458)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.516131, 0.849958, 0.0974203, -0.0411036)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.516841, 0.849176, 0.100144, -0.041789)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.517803, 0.848255, 0.102707, -0.042375)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.518759, 0.84735, 0.105102, -0.042896)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.51971, 0.846464, 0.107336, -0.0433561)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.520809, 0.845501, 0.109423, -0.0437399)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.521901, 0.844556, 0.111363, -0.0440706)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.52309, 0.843566, 0.113166, -0.0443386)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.524273, 0.842594, 0.114835, -0.0445611)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.525533, 0.841588, 0.116381, -0.0447306)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.526787, 0.840598, 0.117804, -0.0448622)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.528099, 0.839584, 0.119117, -0.0449505)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.529406, 0.838586, 0.12032, -0.0450082)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.530752, 0.837574, 0.121425, -0.0450325)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.532092, 0.836577, 0.122434, -0.0450336)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.533451, 0.835576, 0.123356, -0.0450113)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.534805, 0.834588, 0.124196, -0.0449728)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.536158, 0.833608, 0.12496, -0.044921)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.537506, 0.832637, 0.125656, -0.0448601)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.538834, 0.831686, 0.126289, -0.0447961)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.540158, 0.830743, 0.126866, -0.04473)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.541441, 0.82983, 0.127392, -0.044671)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.542721, 0.828922, 0.127875, -0.0446168)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.54394, 0.828056, 0.12832, -0.0445799)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.545156, 0.827192, 0.128738, -0.0445473)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.546302, 0.826376, 0.129133, -0.0445232)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.547445, 0.825561, 0.129508, -0.0444967)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.548519, 0.824794, 0.129861, -0.0444785)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.54959, 0.82403, 0.13019, -0.0444615)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.550593, 0.82331, 0.130509, -0.0444446)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.551594, 0.822595, 0.130799, -0.0444324)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.552528, 0.821923, 0.131081, -0.0444205)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.553461, 0.821255, 0.131336, -0.0444123)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.554328, 0.82063, 0.131583, -0.0444047)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.555194, 0.820011, 0.131798, -0.0443983)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.555981, 0.819443, 0.13201, -0.0444041)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.556767, 0.818877, 0.13221, -0.0443923)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.557551, 0.818316, 0.132382, -0.0443997)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.558936, 0.817319, 0.132695, -0.0444101)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.559628, 0.816823, 0.132841, -0.0443993)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.560231, 0.816386, 0.132982, -0.0444024)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.561433, 0.815527, 0.133173, -0.0444277)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.562937, 0.814449, 0.133409, -0.0444599)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.563438, 0.814092, 0.133475, -0.0444508)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.564199, 0.813545, 0.133593, -0.044472)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.565337, 0.812733, 0.133729, -0.0444411)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.565567, 0.812567, 0.133766, -0.0444555)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.566941, 0.811599, 0.133861, -0.0443487)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.566427, 0.811952, 0.133843, -0.0444931)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.566085, 0.812187, 0.13384, -0.0445833)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.565899, 0.812393, 0.133411, -0.0444748)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.565693, 0.812717, 0.132402, -0.0441775)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.56548, 0.81308, 0.131198, -0.0438181)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.565274, 0.813402, 0.130187, -0.0435223)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.565088, 0.813605, 0.129758, -0.0434143)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.565328, 0.813419, 0.129884, -0.043413)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.565575, 0.813193, 0.130203, -0.0434741)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.565827, 0.812937, 0.130669, -0.0435819)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.566082, 0.812661, 0.13123, -0.043721)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.566338, 0.812376, 0.131841, -0.0438757)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.566595, 0.812089, 0.132451, -0.0440305)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.56685, 0.811812, 0.133012, -0.0441695)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.566591, 0.811911, 0.133449, -0.0443612)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.566326, 0.812039, 0.13374, -0.0445062)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.566055, 0.812208, 0.133838, -0.0445883)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.565769, 0.812463, 0.133517, -0.0445339)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.565462, 0.812838, 0.132613, -0.0442892)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.565136, 0.813322, 0.131165, -0.0438688)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.564793, 0.813904, 0.129214, -0.043288)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.563339, 0.815328, 0.126744, -0.0427333)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.561869, 0.816821, 0.123853, -0.042043)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.560065, 0.818589, 0.120565, -0.0412793)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.558058, 0.820526, 0.116929, -0.0404343)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.555872, 0.822605, 0.112987, -0.0395179)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.553524, 0.824798, 0.108781, -0.0385398)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.551039, 0.827079, 0.104354, -0.0375098)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.548436, 0.829422, 0.0997488, -0.0364381)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.54574, 0.831801, 0.0950093, -0.0353345)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.542974, 0.834192, 0.0901789, -0.0342093)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.540161, 0.836574, 0.0853013, -0.0330726)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.537328, 0.838923, 0.0804203, -0.0319346)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.534499, 0.841219, 0.0755802, -0.0308056)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.531703, 0.843442, 0.0708248, -0.0296959)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.528965, 0.845574, 0.0661986, -0.0286158)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.526313, 0.847598, 0.0617454, -0.0275757)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.523776, 0.849497, 0.0575093, -0.026586)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.521382, 0.851256, 0.0535343, -0.0256569)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.519161, 0.85286, 0.0498642, -0.0247987)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.517142, 0.854295, 0.0465427, -0.0240218)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.515481, 0.855472, 0.0436166, -0.02333)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.513826, 0.856606, 0.0411192, -0.0227529)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.512744, 0.857361, 0.0391081, -0.0222741)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.511669, 0.858079, 0.0376111, -0.0219317)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.51162, 0.858154, 0.0366967, -0.0216922)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.51158, 0.858193, 0.0363817, -0.0216111)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(0.510901, 0.858598, 0.0363646, -0.0216399)
            }
        }
        KeyframeGroup {
            target: fleg02_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.967327, -0.251864, 0.0159089, -0.0243103)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.967442, -0.251418, 0.0159027, -0.024337)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.967448, -0.251395, 0.0158745, -0.0243457)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.967453, -0.251373, 0.015808, -0.0244268)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.967457, -0.251352, 0.0157011, -0.0245573)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.96746, -0.251332, 0.015557, -0.0247335)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.967462, -0.251313, 0.0153785, -0.024952)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.967464, -0.251294, 0.0151687, -0.0252089)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.967513, -0.251087, 0.0149256, -0.0255037)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.967562, -0.250881, 0.0146572, -0.0258296)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.96761, -0.250676, 0.0143662, -0.0261832)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.967669, -0.250429, 0.0140544, -0.0265616)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.967726, -0.250182, 0.0137258, -0.0269605)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.967789, -0.249913, 0.0133829, -0.0273767)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.96785, -0.249645, 0.0130292, -0.027806)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.967915, -0.249364, 0.0126676, -0.0282449)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.967979, -0.249083, 0.0123013, -0.0286895)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.968043, -0.248799, 0.0119334, -0.029136)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.968107, -0.248516, 0.011567, -0.0295807)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.968169, -0.248239, 0.0112053, -0.0300198)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.96823, -0.247962, 0.0108511, -0.0304495)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.968287, -0.247702, 0.0105079, -0.030866)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.968345, -0.247442, 0.0101779, -0.0312663)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.968397, -0.247202, 0.00986186, -0.0316499)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.968449, -0.246963, 0.00955892, -0.0320173)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.968494, -0.246749, 0.00926968, -0.0323686)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.96854, -0.246534, 0.00899302, -0.0327042)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.968587, -0.24632, 0.00872871, -0.0330246)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.968625, -0.246134, 0.00847749, -0.0333297)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.968665, -0.245949, 0.00823811, -0.0336201)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.968704, -0.245763, 0.00801032, -0.0338961)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.968737, -0.245605, 0.00779485, -0.0341578)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.96877, -0.245446, 0.00759046, -0.0344057)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.968803, -0.245287, 0.00739692, -0.0346402)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.968829, -0.245158, 0.00721505, -0.0348612)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.968856, -0.245029, 0.00704354, -0.0350694)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.968882, -0.2449, 0.00688211, -0.0352651)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.96891, -0.24477, 0.00673053, -0.0354485)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.968928, -0.244676, 0.00658985, -0.0356197)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.968947, -0.244581, 0.00645853, -0.0357792)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.968966, -0.244486, 0.00633631, -0.0359275)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.968986, -0.24439, 0.00622294, -0.0360647)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.969006, -0.244295, 0.00611819, -0.0361912)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.969016, -0.244242, 0.00602343, -0.0363069)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.969025, -0.24419, 0.00593679, -0.0364126)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.969036, -0.244137, 0.00585802, -0.0365085)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.969046, -0.244084, 0.00578618, -0.0365921)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.969057, -0.24403, 0.00572163, -0.0366739)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.969068, -0.243977, 0.00566015, -0.0367457)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.969079, -0.243923, 0.00560373, -0.0368163)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.969091, -0.243869, 0.00555033, -0.0368782)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.969102, -0.243815, 0.00550164, -0.0369389)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.969097, -0.243829, 0.0054583, -0.0369913)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.969092, -0.243843, 0.00541931, -0.0370426)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.969087, -0.243857, 0.00538252, -0.0370851)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.969082, -0.24387, 0.00534969, -0.0371266)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.969078, -0.243883, 0.00532062, -0.0371672)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.969073, -0.243897, 0.0052928, -0.0371976)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.969069, -0.24391, 0.00526837, -0.0372271)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.969065, -0.243923, 0.00524717, -0.0372557)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.96906, -0.243936, 0.00522899, -0.0372837)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.969057, -0.243948, 0.00521086, -0.0372998)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.969053, -0.243961, 0.0051954, -0.0373152)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.969049, -0.243974, 0.00518242, -0.03733)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.969046, -0.243986, 0.00517171, -0.0373443)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.969042, -0.243999, 0.00516312, -0.037358)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.969038, -0.244011, 0.00515646, -0.0373712)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.969035, -0.244024, 0.00515153, -0.037384)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.969028, -0.244049, 0.00514022, -0.037385)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.969019, -0.244085, 0.00513168, -0.0373843)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.968995, -0.244183, 0.00512547, -0.0373784)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.968974, -0.244268, 0.00512426, -0.0373721)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.968972, -0.244278, 0.00518225, -0.0373566)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.968974, -0.244285, 0.00529414, -0.0372173)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.968978, -0.244292, 0.00542761, -0.0370511)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.968981, -0.2443, 0.00553955, -0.0369119)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.968979, -0.24431, 0.00559624, -0.0368911)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.968951, -0.244432, 0.00558522, -0.0368284)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.968948, -0.244443, 0.00562447, -0.036812)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.96895, -0.244451, 0.00571988, -0.0366934)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.968955, -0.244457, 0.00587318, -0.0365027)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.968962, -0.244461, 0.00607998, -0.0362454)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.968972, -0.244464, 0.00633589, -0.0359271)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.968919, -0.244721, 0.00664593, -0.0355517)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.968867, -0.244976, 0.00699612, -0.0351263)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.968802, -0.24529, 0.00738415, -0.0346561)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.968738, -0.245602, 0.0078034, -0.0341471)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.968663, -0.245958, 0.00825102, -0.0336044)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.968588, -0.246314, 0.00872097, -0.0330339)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.968506, -0.246698, 0.00920981, -0.0324411)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.968423, -0.247081, 0.00971206, -0.0318315)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.968337, -0.247479, 0.0102237, -0.0312108)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.968249, -0.247876, 0.0107399, -0.0305844)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.968161, -0.248273, 0.011256, -0.029958)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.968072, -0.248671, 0.0117677, -0.0293371)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.967986, -0.249053, 0.0122699, -0.0287275)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.967898, -0.249436, 0.0127587, -0.0281344)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.967817, -0.24979, 0.0132286, -0.0275639)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.967735, -0.250144, 0.0136761, -0.0270209)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.967663, -0.250454, 0.0140954, -0.0265117)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.967589, -0.250766, 0.0144832, -0.0260411)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.967529, -0.25102, 0.0148334, -0.0256157)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.967468, -0.251274, 0.0151432, -0.0252399)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.96743, -0.251436, 0.0154055, -0.0249207)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.967391, -0.251599, 0.0156184, -0.0246623)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.967351, -0.251763, 0.0157772, -0.0244702)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.967352, -0.251765, 0.0158734, -0.0243524)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.96735, -0.251769, 0.0159139, -0.0243402)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(0.967327, -0.251864, 0.0159089, -0.0243103)
            }
        }
        KeyframeGroup {
            target: fleg02_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.967326, -0.251864, -0.0159089, 0.0243103)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.967029, -0.252976, -0.0158394, 0.0246345)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.96617, -0.256159, -0.0156369, 0.0255707)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.964789, -0.261182, -0.0153104, 0.027064)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.962918, -0.267811, -0.0148684, 0.0290599)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.960588, -0.275815, -0.0143197, 0.0315035)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.957827, -0.284957, -0.0136729, 0.0343397)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.954673, -0.295001, -0.012937, 0.0375125)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.951166, -0.305709, -0.0121213, 0.0409655)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.94736, -0.316844, -0.0112352, 0.0446417)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.943318, -0.328169, -0.0102888, 0.0484838)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.939116, -0.33945, -0.00929201, 0.0524346)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.934841, -0.350457, -0.00825535, 0.0564368)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.930593, -0.360962, -0.00718931, 0.0604342)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.926481, -0.370745, -0.00610448, 0.0643711)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.922625, -0.379589, -0.00501142, 0.068193)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.919148, -0.387284, -0.00392056, 0.0718467)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.91618, -0.393622, -0.00284219, 0.0752799)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.91385, -0.398399, -0.00178638, 0.0784413)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.912284, -0.40141, -0.000763001, 0.08128)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.911604, -0.402449, 0.000218245, 0.083745)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.911426, -0.402395, 0.00116246, 0.0859086)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.911261, -0.402337, 0.00207511, 0.0878832)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.911111, -0.402275, 0.002957, 0.0896774)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.910976, -0.402209, 0.00380894, 0.0912997)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.910856, -0.402138, 0.00463177, 0.0927587)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.910751, -0.402063, 0.00542629, 0.0940628)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.910678, -0.401945, 0.00619735, 0.0952202)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.91062, -0.401823, 0.00694184, 0.0962394)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.910576, -0.401696, 0.0076606, 0.097129)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.910545, -0.401563, 0.00835445, 0.0978973)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.910534, -0.401414, 0.00902557, 0.0985524)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.910536, -0.40126, 0.00967337, 0.099103)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.910549, -0.401101, 0.0102986, 0.0995571)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.91059, -0.400937, 0.0109656, 0.0997791)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.910635, -0.400766, 0.0115859, 0.0999804)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.910684, -0.400591, 0.0121627, 0.100163)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.910737, -0.400415, 0.0127, 0.100328)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.910792, -0.400235, 0.0132013, 0.100477)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.910848, -0.400057, 0.0136699, 0.100612)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.910907, -0.399878, 0.01411, 0.100735)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.910982, -0.399694, 0.0145823, 0.100717)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.91106, -0.399509, 0.0150389, 0.100677)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.911136, -0.399332, 0.0154793, 0.100623)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.911213, -0.399154, 0.0159055, 0.100564)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.91129, -0.398976, 0.0163181, 0.100508)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.911367, -0.398797, 0.0167178, 0.100462)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.911435, -0.398633, 0.017103, 0.100427)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.911501, -0.39847, 0.0174731, 0.100408)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.911569, -0.398305, 0.0178362, 0.100386)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.911634, -0.398141, 0.018182, 0.100385)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.911699, -0.397976, 0.0185208, 0.100381)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.911755, -0.397831, 0.0188409, 0.100396)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.91181, -0.397685, 0.0191538, 0.100408)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.911864, -0.397539, 0.019449, 0.10044)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.911918, -0.397393, 0.0197369, 0.10047)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.911973, -0.397246, 0.0200175, 0.100496)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.912016, -0.397123, 0.0202758, 0.100548)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.912059, -0.396999, 0.0205267, 0.100596)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.912102, -0.396875, 0.02077, 0.100641)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.912146, -0.39675, 0.0210057, 0.100683)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.912188, -0.396626, 0.0212195, 0.100754)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.91223, -0.396501, 0.0214254, 0.100822)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.912258, -0.396409, 0.0216199, 0.100887)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.912287, -0.396316, 0.0218064, 0.100949)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.912316, -0.396223, 0.021985, 0.101008)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.912347, -0.39613, 0.0221556, 0.101063)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.912378, -0.396036, 0.022318, 0.101114)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.91241, -0.395941, 0.0224723, 0.101162)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.912442, -0.395846, 0.0226183, 0.101207)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.912476, -0.395751, 0.0227561, 0.101248)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.912493, -0.395693, 0.0228813, 0.101286)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.912531, -0.395577, 0.0231062, 0.101353)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.912572, -0.395458, 0.0232969, 0.101404)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.912616, -0.395338, 0.0234529, 0.101441)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.912689, -0.395153, 0.0236206, 0.101469)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.912803, -0.394896, 0.0236668, 0.101431)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.91328, -0.393795, 0.0237979, 0.101387)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.913798, -0.392652, 0.0235727, 0.101202)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.914548, -0.391135, 0.0231554, 0.100396)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.91532, -0.389603, 0.0226507, 0.0994285)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.915921, -0.388419, 0.0222254, 0.0986153)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.915891, -0.388588, 0.0219775, 0.0982892)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.915791, -0.388786, 0.0220023, 0.0984258)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.915678, -0.388994, 0.022175, 0.0986235)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.915541, -0.389211, 0.0224118, 0.0989779)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.915148, -0.390008, 0.0226417, 0.099421)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.91472, -0.390875, 0.0228918, 0.099903)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.91429, -0.391741, 0.0231419, 0.100385)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.913894, -0.392536, 0.0233715, 0.100827)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.913611, -0.393089, 0.0235718, 0.101189)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.913351, -0.393634, 0.0237077, 0.101395)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.91339, -0.393507, 0.0237686, 0.101522)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.913486, -0.393355, 0.0236082, 0.101283)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.914129, -0.392065, 0.0232356, 0.100565)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.915159, -0.389986, 0.0226356, 0.0994091)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.91654, -0.387175, 0.0218252, 0.0978468)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.918233, -0.383687, 0.0208214, 0.0959106)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.9202, -0.379579, 0.0196412, 0.0936327)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.9224, -0.374904, 0.0183014, 0.0910451)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.924796, -0.369721, 0.0168194, 0.0881804)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.927348, -0.364085, 0.0152123, 0.0850712)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.930017, -0.358054, 0.0134976, 0.0817506)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.932768, -0.351687, 0.0116927, 0.078252)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.935565, -0.345044, 0.00981545, 0.0746094)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.938375, -0.338185, 0.00788369, 0.0708571)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.941167, -0.331174, 0.00591541, 0.0670297)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.943913, -0.324073, 0.00392871, 0.0631622)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.946586, -0.316947, 0.0019417, 0.0592898)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.949163, -0.309862, -2.74502e-05, 0.055448)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.951624, -0.302884, -0.00196067, 0.0516723)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.953949, -0.296078, -0.00383989, 0.0479981)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.956124, -0.289514, -0.00564715, 0.044461)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.958135, -0.283257, -0.00736466, 0.0410964)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.95997, -0.277375, -0.00897473, 0.0379392)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.961621, -0.271936, -0.0104598, 0.0350247)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.963078, -0.267006, -0.0118026, 0.0323873)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.964334, -0.262653, -0.0129859, 0.0300618)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.965383, -0.258944, -0.0139923, 0.0280825)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.966215, -0.255945, -0.014805, 0.0264835)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.966824, -0.253721, -0.0154067, 0.025299)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.967198, -0.252339, -0.0157805, 0.0245632)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.967209, -0.252313, -0.0159202, 0.0243029)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(0.967326, -0.251864, -0.0159089, 0.0243103)
            }
        }
        KeyframeGroup {
            target: fleg03_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.842581, -0.538229, 0.00367509, -0.0187952)
            }
            Keyframe {
                frame: 791.667
                value: Qt.quaternion(0.843082, -0.537445, 0.00363528, -0.0187636)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.843105, -0.537406, 0.00345338, -0.0188765)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.843122, -0.537372, 0.00292749, -0.0192085)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.843132, -0.537341, 0.0020527, -0.0197002)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.843136, -0.537313, 0.00087061, -0.0203651)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.843133, -0.537287, -0.000594241, -0.0211897)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.843122, -0.537261, -0.00231723, -0.0221606)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.843101, -0.537234, -0.00427372, -0.0232644)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.843253, -0.536921, -0.00644745, -0.0244855)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.843393, -0.536604, -0.0088072, -0.0258114)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.843523, -0.536283, -0.0113293, -0.027229)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.843641, -0.535956, -0.0139898, -0.0287249)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.843782, -0.535569, -0.0167658, -0.0302841)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.843911, -0.535174, -0.0196303, -0.0318932)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.844028, -0.534773, -0.0225582, -0.0335381)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.844143, -0.534351, -0.0255247, -0.035204)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.844248, -0.533922, -0.0285043, -0.0368771)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.844344, -0.533486, -0.0314717, -0.038543)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.844422, -0.53306, -0.0344011, -0.0401881)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.844494, -0.532629, -0.0372681, -0.0417973)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.844563, -0.532194, -0.0400476, -0.0433563)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.844604, -0.531796, -0.0427171, -0.0448553)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.844646, -0.531395, -0.045276, -0.046291)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.844688, -0.530992, -0.0477266, -0.0476644)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.8447, -0.530637, -0.050068, -0.0489796)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.844714, -0.530282, -0.0523051, -0.0502349)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.84473, -0.529926, -0.0544399, -0.0514315)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.84475, -0.529571, -0.0564747, -0.0525703)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.844736, -0.529274, -0.0584078, -0.0536567)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.844726, -0.528978, -0.0602449, -0.054688)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.844721, -0.528683, -0.0619881, -0.0556652)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.84472, -0.52839, -0.0636395, -0.0565895)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.844725, -0.528098, -0.0652013, -0.057462)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.844695, -0.527871, -0.0666711, -0.058289)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.844671, -0.527647, -0.0680554, -0.0590667)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.844652, -0.527425, -0.0693563, -0.0597963)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.84464, -0.527205, -0.0705758, -0.060479)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.844633, -0.526988, -0.0717161, -0.0611158)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.844633, -0.526774, -0.0727791, -0.0617081)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.84459, -0.526641, -0.0737614, -0.0622637)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.844553, -0.52651, -0.0746705, -0.0627773)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.844523, -0.526383, -0.0755085, -0.0632498)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.844499, -0.526258, -0.076277, -0.0636837)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.844481, -0.526137, -0.0769799, -0.0640767)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.84447, -0.526018, -0.0776167, -0.0644343)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.844464, -0.525902, -0.078192, -0.0647537)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.844464, -0.525788, -0.0787177, -0.0650464)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.844467, -0.525676, -0.0792091, -0.0653178)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.844473, -0.525566, -0.0796661, -0.0655707)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.844482, -0.525457, -0.0800912, -0.0658037)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.844428, -0.525457, -0.0804758, -0.0660302)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.844377, -0.525458, -0.0808309, -0.0662384)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.844329, -0.525461, -0.0811577, -0.0664292)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.844284, -0.525465, -0.0814559, -0.0666057)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.844242, -0.52547, -0.0817282, -0.0667662)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.844202, -0.525477, -0.0819759, -0.0669115)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.844165, -0.525485, -0.0821984, -0.067045)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.84413, -0.525494, -0.0823988, -0.0671647)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.844068, -0.525515, -0.0827376, -0.067366)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.844041, -0.525528, -0.0828698, -0.0674436)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.844013, -0.525541, -0.082999, -0.067526)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.843966, -0.52557, -0.0831927, -0.0676507)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.843906, -0.52562, -0.083383, -0.0677759)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.843736, -0.525849, -0.0835505, -0.0679091)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.843634, -0.526007, -0.083564, -0.0679372)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.843665, -0.526047, -0.0831853, -0.0677051)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.843754, -0.526116, -0.0822677, -0.0671752)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.843861, -0.526195, -0.0811725, -0.0665425)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.843948, -0.526263, -0.0802542, -0.0660128)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.843978, -0.526302, -0.079873, -0.0657839)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.843851, -0.526505, -0.0798375, -0.0658347)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.843868, -0.526538, -0.0795704, -0.0656764)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.84394, -0.526597, -0.0788001, -0.065206)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.84406, -0.526681, -0.0775413, -0.0644794)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.844223, -0.526785, -0.0758421, -0.0634986)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.844424, -0.526907, -0.0737385, -0.0622851)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.844656, -0.527041, -0.0712661, -0.0608604)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.84467, -0.527575, -0.0684336, -0.0592779)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.844701, -0.528115, -0.0653057, -0.0575247)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.844744, -0.528658, -0.0619188, -0.0556223)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.844744, -0.529279, -0.0583041, -0.0535973)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.844743, -0.529896, -0.0545037, -0.0514652)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.844713, -0.530547, -0.0505517, -0.0492497)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.844672, -0.531189, -0.0464875, -0.0469694)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.844605, -0.531841, -0.042347, -0.0446468)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.844522, -0.532482, -0.0381686, -0.0423019)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.844418, -0.53311, -0.0339893, -0.0399561)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.844293, -0.533725, -0.0298465, -0.0376306)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.844157, -0.534308, -0.0257783, -0.0353461)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.843998, -0.534877, -0.0218212, -0.0331242)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.843841, -0.535395, -0.018014, -0.0309852)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.843661, -0.535902, -0.0143924, -0.0289511)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.843509, -0.536322, -0.0109962, -0.0270416)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.843337, -0.536733, -0.00785986, -0.0252792)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.843147, -0.537138, -0.00502057, -0.0236842)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.843043, -0.537378, -0.00251972, -0.022277)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.842926, -0.537617, -0.000389595, -0.0210792)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.842796, -0.537856, 0.00133272, -0.0201114)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.842655, -0.538099, 0.00261025, -0.019394)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.842664, -0.538096, 0.00340045, -0.0189488)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.842664, -0.538099, 0.00366342, -0.0187821)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(0.842581, -0.538229, 0.00367509, -0.0187952)
            }
        }
        KeyframeGroup {
            target: fleg03_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.842581, -0.538229, -0.0036751, 0.0187952)
            }
            Keyframe {
                frame: 833.333
                value: Qt.quaternion(0.843596, -0.536643, -0.00357541, 0.0186113)
            }
            Keyframe {
                frame: 875
                value: Qt.quaternion(0.84649, -0.532088, -0.00328968, 0.0180839)
            }
            Keyframe {
                frame: 916.667
                value: Qt.quaternion(0.851015, -0.52485, -0.00283754, 0.0172485)
            }
            Keyframe {
                frame: 958.333
                value: Qt.quaternion(0.856913, -0.515204, -0.00223834, 0.0161401)
            }
            Keyframe {
                frame: 1000
                value: Qt.quaternion(0.863913, -0.503421, -0.00151158, 0.0147937)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.quaternion(0.871745, -0.48978, -0.000677127, 0.0132448)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.quaternion(0.880141, -0.474573, 0.00024459, 0.0115306)
            }
            Keyframe {
                frame: 1125
                value: Qt.quaternion(0.888841, -0.458112, 0.0012325, 0.00968917)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.quaternion(0.897604, -0.440729, 0.00226493, 0.00776027)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.quaternion(0.906208, -0.422779, 0.00331973, 0.0057848)
            }
            Keyframe {
                frame: 1250
                value: Qt.quaternion(0.914459, -0.404637, 0.00437453, 0.00380452)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.quaternion(0.922191, -0.386693, 0.00540692, 0.00186161)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.quaternion(0.929269, -0.369348, 0.00639477, -1.83655e-06)
            }
            Keyframe {
                frame: 1375
                value: Qt.quaternion(0.935589, -0.353012, 0.00731638, -0.00174421)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.quaternion(0.941071, -0.338093, 0.00815068, -0.00332477)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.quaternion(0.945661, -0.325, 0.00887724, -0.00470377)
            }
            Keyframe {
                frame: 1500
                value: Qt.quaternion(0.949313, -0.314135, 0.00947621, -0.00584239)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.quaternion(0.95199, -0.305894, 0.00992816, -0.00670259)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.quaternion(0.953647, -0.300667, 0.0102137, -0.0072466)
            }
            Keyframe {
                frame: 1625
                value: Qt.quaternion(0.954218, -0.29884, 0.0103134, -0.00743649)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.quaternion(0.954202, -0.298896, 0.0102849, -0.00740624)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.quaternion(0.954185, -0.298953, 0.0102005, -0.00731854)
            }
            Keyframe {
                frame: 1750
                value: Qt.quaternion(0.95417, -0.29901, 0.010063, -0.00717622)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.quaternion(0.954155, -0.299069, 0.00987521, -0.00698208)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.quaternion(0.95414, -0.299129, 0.00963999, -0.00673892)
            }
            Keyframe {
                frame: 1875
                value: Qt.quaternion(0.954126, -0.299189, 0.00936015, -0.00644955)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.quaternion(0.954112, -0.29925, 0.00903855, -0.00611675)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.quaternion(0.954099, -0.299312, 0.00867797, -0.00574333)
            }
            Keyframe {
                frame: 2000
                value: Qt.quaternion(0.954085, -0.299373, 0.00828133, -0.00533208)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.quaternion(0.954072, -0.299435, 0.0078514, -0.00488583)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.quaternion(0.954058, -0.299497, 0.00739108, -0.00440734)
            }
            Keyframe {
                frame: 2125
                value: Qt.quaternion(0.954025, -0.299622, 0.00690342, -0.00389897)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.quaternion(0.953992, -0.299746, 0.00639097, -0.00336405)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.quaternion(0.953958, -0.29987, 0.00585657, -0.00280537)
            }
            Keyframe {
                frame: 2250
                value: Qt.quaternion(0.953924, -0.299994, 0.00530305, -0.00222577)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.quaternion(0.953889, -0.300117, 0.00473325, -0.00162802)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.quaternion(0.953854, -0.300239, 0.00415, -0.00101496)
            }
            Keyframe {
                frame: 2375
                value: Qt.quaternion(0.953812, -0.300382, 0.00355622, -0.000389318)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.quaternion(0.953769, -0.300525, 0.00295465, 0.000245985)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.quaternion(0.953726, -0.300666, 0.00234813, 0.000888119)
            }
            Keyframe {
                frame: 2500
                value: Qt.quaternion(0.953682, -0.300807, 0.00173956, 0.00153429)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.quaternion(0.953638, -0.300947, 0.00113174, 0.00218163)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.quaternion(0.953591, -0.301091, 0.000527489, 0.00282735)
            }
            Keyframe {
                frame: 2625
                value: Qt.quaternion(0.953544, -0.301234, -7.03303e-05, 0.00346859)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.quaternion(0.953496, -0.301377, -0.000658899, 0.00410256)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.quaternion(0.953448, -0.301519, -0.00123579, 0.00472682)
            }
            Keyframe {
                frame: 2750
                value: Qt.quaternion(0.953399, -0.30166, -0.00180042, 0.00534081)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.quaternion(0.953351, -0.301797, -0.00235257, 0.00594435)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.quaternion(0.953302, -0.301934, -0.00289218, 0.00653728)
            }
            Keyframe {
                frame: 2875
                value: Qt.quaternion(0.953253, -0.30207, -0.003419, 0.00711948)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.quaternion(0.953204, -0.302205, -0.00393289, 0.00769075)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.quaternion(0.953154, -0.30234, -0.0044337, 0.00825096)
            }
            Keyframe {
                frame: 3000
                value: Qt.quaternion(0.953106, -0.302469, -0.00492123, 0.00879994)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.quaternion(0.953058, -0.302597, -0.00539535, 0.00933754)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.quaternion(0.953009, -0.302725, -0.00585592, 0.0098636)
            }
            Keyframe {
                frame: 3125
                value: Qt.quaternion(0.95296, -0.302853, -0.00630274, 0.010378)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.quaternion(0.952911, -0.302981, -0.00673569, 0.0108805)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.quaternion(0.952864, -0.303101, -0.00715452, 0.011371)
            }
            Keyframe {
                frame: 3250
                value: Qt.quaternion(0.952816, -0.303222, -0.00755916, 0.0118495)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.quaternion(0.952769, -0.303342, -0.00794943, 0.0123155)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.quaternion(0.952722, -0.303462, -0.00832523, 0.0127692)
            }
            Keyframe {
                frame: 3375
                value: Qt.quaternion(0.952674, -0.303582, -0.00868632, 0.0132102)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.quaternion(0.952629, -0.303693, -0.00903251, 0.0136385)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.quaternion(0.952585, -0.303805, -0.0093637, 0.014054)
            }
            Keyframe {
                frame: 3500
                value: Qt.quaternion(0.95254, -0.303917, -0.00967976, 0.0144563)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.quaternion(0.952495, -0.304028, -0.00998059, 0.0148454)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.quaternion(0.95245, -0.30414, -0.010266, 0.0152212)
            }
            Keyframe {
                frame: 3625
                value: Qt.quaternion(0.952409, -0.304242, -0.0105356, 0.0155836)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.quaternion(0.952368, -0.304343, -0.0107895, 0.0159324)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.quaternion(0.952327, -0.304445, -0.0110275, 0.0162673)
            }
            Keyframe {
                frame: 3750
                value: Qt.quaternion(0.952286, -0.304547, -0.0112495, 0.0165883)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.quaternion(0.952246, -0.304649, -0.0114553, 0.0168952)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.quaternion(0.952206, -0.304752, -0.0116448, 0.0171878)
            }
            Keyframe {
                frame: 3875
                value: Qt.quaternion(0.95217, -0.30484, -0.0118176, 0.0174663)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.quaternion(0.952135, -0.304929, -0.0119738, 0.0177303)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.quaternion(0.9521, -0.305018, -0.0121132, 0.0179795)
            }
            Keyframe {
                frame: 4000
                value: Qt.quaternion(0.952065, -0.305107, -0.0122357, 0.018214)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.quaternion(0.952031, -0.305197, -0.0123412, 0.0184335)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.quaternion(0.951997, -0.305288, -0.0124295, 0.018638)
            }
            Keyframe {
                frame: 4125
                value: Qt.quaternion(0.951963, -0.305379, -0.0124948, 0.018829)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.quaternion(0.9519, -0.30556, -0.0125559, 0.0189999)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.quaternion(0.951838, -0.305742, -0.0125935, 0.0191571)
            }
            Keyframe {
                frame: 4250
                value: Qt.quaternion(0.951776, -0.305925, -0.0126129, 0.0192988)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.quaternion(0.951715, -0.306108, -0.0126131, 0.019425)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.quaternion(0.951654, -0.306292, -0.0125936, 0.0195358)
            }
            Keyframe {
                frame: 4375
                value: Qt.quaternion(0.951468, -0.306863, -0.0125613, 0.019626)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.quaternion(0.950979, -0.308381, -0.0124819, 0.0196289)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.quaternion(0.950124, -0.311007, -0.0123871, 0.0196302)
            }
            Keyframe {
                frame: 4500
                value: Qt.quaternion(0.94917, -0.313911, -0.0122955, 0.0196295)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.quaternion(0.94839, -0.316263, -0.0122258, 0.0196255)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.quaternion(0.948067, -0.317232, -0.0121959, 0.0196167)
            }
            Keyframe {
                frame: 4625
                value: Qt.quaternion(0.948163, -0.316942, -0.0122078, 0.0196219)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.quaternion(0.948426, -0.316154, -0.0122362, 0.0196245)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.quaternion(0.948812, -0.314993, -0.0122772, 0.0196253)
            }
            Keyframe {
                frame: 4750
                value: Qt.quaternion(0.949278, -0.313583, -0.0123264, 0.019625)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.quaternion(0.949783, -0.312049, -0.0123798, 0.0196244)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.quaternion(0.950285, -0.310514, -0.0124332, 0.0196239)
            }
            Keyframe {
                frame: 4875
                value: Qt.quaternion(0.950744, -0.309104, -0.0124826, 0.0196242)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.quaternion(0.951121, -0.307942, -0.0125189, 0.0196111)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.quaternion(0.951375, -0.307154, -0.0125427, 0.0195997)
            }
            Keyframe {
                frame: 5000
                value: Qt.quaternion(0.951469, -0.306864, -0.0125499, 0.0195906)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.quaternion(0.951215, -0.307651, -0.0125209, 0.019586)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.quaternion(0.950473, -0.309939, -0.0124417, 0.0195883)
            }
            Keyframe {
                frame: 5125
                value: Qt.quaternion(0.949266, -0.313621, -0.0123161, 0.0195978)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.quaternion(0.947612, -0.318588, -0.0121479, 0.0196153)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.quaternion(0.945528, -0.324731, -0.0119299, 0.0196085)
            }
            Keyframe {
                frame: 5250
                value: Qt.quaternion(0.943025, -0.331939, -0.0116728, 0.0195995)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.quaternion(0.940116, -0.340101, -0.01138, 0.0195878)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.quaternion(0.936815, -0.349103, -0.011055, 0.0195732)
            }
            Keyframe {
                frame: 5375
                value: Qt.quaternion(0.933136, -0.358833, -0.0107014, 0.0195552)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.quaternion(0.929097, -0.369175, -0.0103226, 0.0195338)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.quaternion(0.924722, -0.380015, -0.00992236, 0.0195086)
            }
            Keyframe {
                frame: 5500
                value: Qt.quaternion(0.920035, -0.391236, -0.00950459, 0.0194795)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.quaternion(0.91507, -0.402725, -0.00907315, 0.0194466)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.quaternion(0.909862, -0.414366, -0.00863206, 0.01941)
            }
            Keyframe {
                frame: 5625
                value: Qt.quaternion(0.904457, -0.426047, -0.00818546, 0.0193698)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.quaternion(0.898901, -0.437658, -0.00773748, 0.0193263)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.quaternion(0.893249, -0.449089, -0.00729239, 0.0192802)
            }
            Keyframe {
                frame: 5750
                value: Qt.quaternion(0.887561, -0.460238, -0.0068544, 0.0192318)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.quaternion(0.881901, -0.471001, -0.00642782, 0.0191819)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.quaternion(0.876337, -0.481281, -0.00601687, 0.0191313)
            }
            Keyframe {
                frame: 5875
                value: Qt.quaternion(0.870942, -0.490983, -0.00562579, 0.0190807)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.quaternion(0.865789, -0.500019, -0.00525876, 0.0190313)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.quaternion(0.860957, -0.5083, -0.00491992, 0.0189839)
            }
            Keyframe {
                frame: 6000
                value: Qt.quaternion(0.856522, -0.515743, -0.00461335, 0.0189395)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.quaternion(0.852563, -0.522265, -0.00434309, 0.0188992)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.quaternion(0.849158, -0.527786, -0.00411313, 0.0188642)
            }
            Keyframe {
                frame: 6125
                value: Qt.quaternion(0.846384, -0.532225, -0.00392741, 0.0188353)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.quaternion(0.844316, -0.535502, -0.00378987, 0.0188136)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.quaternion(0.843025, -0.537532, -0.00370445, 0.0187999)
            }
            Keyframe {
                frame: 6250
                value: Qt.quaternion(0.843003, -0.537568, -0.00367338, 0.0188186)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.quaternion(0.842581, -0.538229, -0.0036751, 0.0187952)
            }
        }
    }
    Timeline {
        startFrame: 0
        endFrame: 750
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            id: runningAnimation
            duration: 750
            from: 0
            to: 750
            running: false
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: bone
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.09804e-16, 1.43619, -0.459184)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-3.07177e-16, 1.43619, -0.389421)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-5.0455e-16, 1.43619, -0.215647)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-7.01923e-16, 1.43619, 0.0088596)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-8.99296e-16, 1.43619, 0.236777)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-1.09667e-15, 1.43619, 0.444598)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-1.29404e-15, 1.43619, 0.614773)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-1.49142e-15, 1.43619, 0.729749)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-1.68879e-15, 1.43619, 0.771975)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-1.88616e-15, 1.43619, 0.771975)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-2.08353e-15, 1.43619, 0.771975)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-2.28091e-15, 1.43619, 0.771975)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-2.47828e-15, 1.43619, 0.771975)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-2.67565e-15, 1.43619, 0.771975)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-2.87303e-15, 1.43619, 0.643934)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-3.0704e-15, 1.43619, 0.338607)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-3.26777e-15, 1.43619, -0.0258163)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-3.46514e-15, 1.43619, -0.331144)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-3.66252e-15, 1.43619, -0.459184)
            }
        }
        KeyframeGroup {
            target: bone
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.479408, 0.877592, 1.143e-07, 2.09234e-07)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.452298, 0.891867, 1.20656e-07, 2.05635e-07)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.388626, 0.921396, 1.34782e-07, 1.96665e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.317125, 0.948384, 1.49408e-07, 1.85797e-07)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.263408, 0.964685, 1.59598e-07, 1.77121e-07)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.227877, 0.97369, 1.65982e-07, 1.71153e-07)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.203996, 0.978972, 1.70118e-07, 1.67042e-07)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.185113, 0.982717, 1.73302e-07, 1.63737e-07)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.164551, 0.986369, 1.76684e-07, 1.60082e-07)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.137566, 0.990493, 1.80987e-07, 1.552e-07)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.107384, 0.994218, 1.85623e-07, 1.49625e-07)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.0793212, 0.996849, 1.89766e-07, 1.44334e-07)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.0586784, 0.998277, 1.92712e-07, 1.40376e-07)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.050654, 0.998716, 1.93834e-07, 1.38823e-07)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.0961377, 0.995368, 1.87303e-07, 1.47516e-07)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.2063, 0.978489, 1.69725e-07, 1.67442e-07)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.336185, 0.941796, 1.45631e-07, 1.88773e-07)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.438895, 0.898538, 1.23721e-07, 2.03805e-07)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.479408, 0.877592, 1.143e-07, 2.09234e-07)
            }
        }
        KeyframeGroup {
            target: bone_001
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.43207e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-1.4518e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-1.47154e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-1.49128e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-1.58996e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-1.6097e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-1.62944e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-1.64918e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-1.66891e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-1.68865e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-1.70839e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-1.72813e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-1.74786e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-1.7676e-14, 1.11965, -5.96046e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-1.78734e-14, 1.11965, -5.96046e-08)
            }
        }
        KeyframeGroup {
            target: bone_001
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.786047, 0.618167, 1.59282e-06, 1.5474e-06)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.855168, 0.518352, 1.72354e-06, 1.01765e-06)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.951464, 0.30776, 1.92802e-06, 7.70387e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.981748, 0.190186, 1.76377e-06, 1.06502e-06)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.981748, 0.190186, 1.48037e-06, 1.39831e-06)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.980853, 0.19475, 1.43049e-06, 1.45833e-06)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.97779, 0.209586, 1.39707e-06, 1.50426e-06)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.971658, 0.236392, 1.38444e-06, 1.53455e-06)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.960856, 0.277047, 1.39725e-06, 1.54641e-06)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.942646, 0.333795, 1.44073e-06, 1.53476e-06)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.913503, 0.406833, 1.5167e-06, 1.49454e-06)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.874686, 0.48469, 1.60759e-06, 1.43799e-06)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.833135, 0.553069, 1.69072e-06, 1.38819e-06)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.799644, 0.600475, 1.66316e-06, 1.43516e-06)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.786047, 0.618167, 1.59282e-06, 1.5474e-06)
            }
        }
        KeyframeGroup {
            target: bone_002
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-1.09804e-16, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-6.07402e-15, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-1.20382e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-1.80024e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-2.39667e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-2.99309e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-3.58951e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-4.18593e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-4.78235e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-5.37877e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-5.9752e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-6.57162e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-7.16804e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-7.76446e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-8.36088e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-8.9573e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-9.55372e-14, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-1.01501e-13, 1.16306, -2.98023e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-1.07466e-13, 1.16306, -2.98023e-08)
            }
        }
        KeyframeGroup {
            target: bone_002
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.88614, -0.463418, 1.64474e-10, -2.09918e-06)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.9192, -0.393791, -2.99363e-07, -1.77118e-06)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.966397, -0.257056, -6.41747e-07, -1.37117e-06)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.983324, -0.18186, -8.0911e-07, -9.73457e-07)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.982849, -0.184411, -7.93128e-07, -1.04725e-06)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.981534, -0.191288, -7.71822e-07, -1.12438e-06)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.979526, -0.201319, -7.45592e-07, -1.20367e-06)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.97698, -0.21333, -7.15196e-07, -1.28401e-06)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.974094, -0.226143, -6.81774e-07, -1.36435e-06)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.971002, -0.239073, -6.46135e-07, -1.44413e-06)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.967362, -0.253397, -6.06236e-07, -1.52409e-06)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.962615, -0.270874, -5.58778e-07, -1.60504e-06)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.956037, -0.293247, -4.99806e-07, -1.68737e-06)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.946662, -0.322227, -4.24678e-07, -1.77087e-06)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.933668, -0.35814, -3.30623e-07, -1.85391e-06)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.918226, -0.396057, -2.2557e-07, -1.93287e-06)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.902856, -0.429943, -1.22141e-07, -2.00579e-06)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.890918, -0.454165, -4.4816e-08, -2.05371e-06)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.88614, -0.463418, 1.64474e-10, -2.09918e-06)
            }
        }
        KeyframeGroup {
            target: bone_003
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(2.83119e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(2.86636e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(2.90153e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(2.93671e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(3.11257e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(3.14774e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(3.18291e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(3.21808e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(3.25326e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(3.28843e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(3.3236e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(3.35877e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(3.39394e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(3.42912e-14, 0.568189, 1.49012e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(3.46429e-14, 0.568189, 1.49012e-08)
            }
        }
        KeyframeGroup {
            target: bone_003
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.874272, 0.485437, 0, 2.19901e-06)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.89052, 0.454944, -7.5968e-08, 2.19769e-06)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.917917, 0.396772, -2.17051e-07, 2.18827e-06)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.931076, 0.364824, -2.92518e-07, 2.17946e-06)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.929231, 0.369498, -2.81563e-07, 2.18091e-06)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.924268, 0.381745, -2.52719e-07, 2.18444e-06)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.917002, 0.398883, -2.12017e-07, 2.18876e-06)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.908334, 0.418246, -1.65536e-07, 2.19277e-06)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.899341, 0.437247, -1.19407e-07, 2.19576e-06)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.891125, 0.453758, -7.88933e-08, 2.19759e-06)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.884187, 0.467133, -4.57737e-08, 2.19853e-06)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.87886, 0.477079, -2.09666e-08, 2.19891e-06)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.875461, 0.483289, -5.39774e-09, 2.199e-06)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.874272, 0.485437, 0, 2.19901e-06)
            }
        }
        KeyframeGroup {
            target: bleg01_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(-0.0276277, 0.999238, -0.0271004, 0.00501525)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(-0.0478161, 0.998476, -0.0271962, 0.00446654)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(-0.0852791, 0.995976, -0.0273447, 0.00344207)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(-0.10539, 0.99405, -0.0273805, 0.00288576)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(-0.102678, 0.994334, -0.0273663, 0.00295993)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(-0.09336, 0.995252, -0.027338, 0.00321686)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(-0.075633, 0.996755, -0.0273101, 0.00370663)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(-0.0475998, 0.998486, -0.0271952, 0.00447244)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(-0.00720422, 0.999594, -0.0269923, 0.00556796)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.0458144, 0.99857, -0.026659, 0.00699153)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.103804, 0.994216, -0.0262074, 0.00852992)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.156844, 0.987239, -0.0257136, 0.00991976)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.195295, 0.980357, -0.0253064, 0.0109168)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.210093, 0.977293, -0.0251385, 0.0112981)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.185865, 0.982189, -0.0254101, 0.0106731)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.127246, 0.991488, -0.0259987, 0.00914624)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.0564185, 0.998027, -0.0265833, 0.00727429)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(-0.00291254, 0.999616, -0.0269681, 0.0056838)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(-0.0276277, 0.999238, -0.0271004, 0.00501525)
            }
        }
        KeyframeGroup {
            target: bleg01_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.0248585, 0.999311, 0.0267998, -0.00643044)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.00232306, 0.999624, 0.0272407, -0.00219911)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(-0.0395631, 0.998808, 0.0280221, 0.00566808)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(-0.0620704, 0.997618, 0.0284109, 0.00989747)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(-0.0601521, 0.997749, 0.0282972, 0.00887515)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(-0.0581854, 0.997894, 0.0280294, 0.00610183)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(-0.0496796, 0.998379, 0.0276656, 0.00235552)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(-0.0335276, 0.999063, 0.0272966, -0.00174936)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(-0.00720435, 0.999594, 0.0269923, -0.00556761)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.0361543, 0.998955, 0.0266792, -0.00839378)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.0929653, 0.995272, 0.0262465, -0.0101156)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.1497, 0.988335, 0.0257498, -0.0109804)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.192947, 0.980818, 0.0253208, -0.0112705)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.210093, 0.977293, 0.0251384, -0.0112978)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.191139, 0.981176, 0.0253524, -0.0108091)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.145469, 0.988979, 0.025826, -0.00962277)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.090421, 0.995522, 0.0263197, -0.00817628)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.0441946, 0.998643, 0.0266703, -0.00694793)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.0248585, 0.999311, 0.0267998, -0.00643044)
            }
        }
        KeyframeGroup {
            target: bleg02_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-6.70552e-08, 0.678018, 6.51926e-08)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-6.66413e-08, 0.678018, 6.51408e-08)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-6.62274e-08, 0.678018, 6.50891e-08)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-6.58135e-08, 0.678018, 6.50374e-08)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-6.37439e-08, 0.678018, 6.47787e-08)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-6.33299e-08, 0.678018, 6.47269e-08)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-6.2916e-08, 0.678018, 6.46752e-08)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-6.25021e-08, 0.678018, 6.46234e-08)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-6.20882e-08, 0.678018, 6.45717e-08)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-6.16742e-08, 0.678018, 6.452e-08)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-6.12603e-08, 0.678018, 6.44682e-08)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-6.08464e-08, 0.678018, 6.44165e-08)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-6.04325e-08, 0.678018, 6.43647e-08)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-6.00186e-08, 0.678018, 6.4313e-08)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-5.96046e-08, 0.678018, 6.42613e-08)
            }
        }
        KeyframeGroup {
            target: bleg02_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.733545, -0.678589, -0.00473093, -0.0375017)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.831589, -0.553749, -0.00623822, -0.0422274)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.960772, -0.272965, -0.00869628, -0.0482992)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.991817, -0.117222, -0.00964531, -0.049641)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.99182, -0.117221, -0.00965174, -0.0495865)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.991414, -0.120597, -0.00962748, -0.0496253)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.989734, -0.133711, -0.00955711, -0.049559)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.985671, -0.161013, -0.00940481, -0.0493926)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.977022, -0.207224, -0.00912896, -0.0490225)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.959434, -0.277639, -0.00866365, -0.0482387)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.925317, -0.376228, -0.00791529, -0.0466676)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.872139, -0.487211, -0.00692211, -0.044162)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.809213, -0.586042, -0.00587878, -0.0411539)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.755748, -0.653706, -0.00505851, -0.0385763)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.733545, -0.678589, -0.00473093, -0.0375017)
            }
        }
        KeyframeGroup {
            target: bleg02_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(3.72529e-08, 0.678018, 8.801e-08)
            }
        }
        KeyframeGroup {
            target: bleg02_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.733545, -0.67859, 0.00473094, 0.0375017)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.828455, -0.558423, 0.00821708, 0.0419325)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.955746, -0.289952, 0.0143755, 0.0476574)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.988743, -0.140345, 0.0170777, 0.0489793)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.988391, -0.142921, 0.0167423, 0.0487587)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.986835, -0.153545, 0.0157461, 0.0483058)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.983027, -0.17653, 0.0140942, 0.0479144)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.97508, -0.216318, 0.0117592, 0.0478326)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.959434, -0.277639, 0.00866369, 0.0482387)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.92803, -0.369369, 0.00602925, 0.0478629)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.876204, -0.479757, 0.0047913, 0.0455677)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.812482, -0.581446, 0.00446736, 0.0421167)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.756944, -0.652305, 0.00459384, 0.0388999)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.733545, -0.67859, 0.00473094, 0.0375017)
            }
        }
        KeyframeGroup {
            target: bleg03_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(4.28408e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(4.27374e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(4.26339e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(4.25304e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(4.2013e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(4.19095e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(4.1806e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(4.17026e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(4.15991e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(4.14956e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(4.13921e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(4.12886e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(4.11852e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(4.10817e-08, 0.365804, -1.71829e-07)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(4.09782e-08, 0.365804, -1.71829e-07)
            }
        }
        KeyframeGroup {
            target: bleg03_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.972802, -0.231479, -0.00708239, 0.00483821)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.989222, -0.146319, -0.00343516, 0.00437762)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.999851, 0.016561, 0.0034829, 0.00342345)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.994638, 0.103132, 0.00712962, 0.00287802)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.999358, 0.0354127, 0.0042788, 0.00330694)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.990691, -0.136028, -0.00299583, 0.00432015)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.939575, -0.342096, -0.011853, 0.00539455)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.867108, -0.497734, -0.0186369, 0.00608667)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.831283, -0.55541, -0.0211758, 0.00631152)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.850978, -0.52479, -0.019826, 0.00619452)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.893951, -0.447825, -0.0164514, 0.00587742)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.936451, -0.350543, -0.0122189, 0.00543496)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.963721, -0.266728, -0.00859839, 0.0050208)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.972802, -0.231479, -0.00708239, 0.00483821)
            }
        }
        KeyframeGroup {
            target: bleg03_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(2.04891e-08, 0.365803, -4.51691e-08)
            }
        }
        KeyframeGroup {
            target: bleg03_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.98246, -0.186347, 0.00514682, -0.0045975)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.993674, -0.112207, 0.0019801, -0.00418565)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.999586, 0.0283112, -0.0039791, -0.00335099)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.994638, 0.103132, -0.00712962, -0.00287803)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.999358, 0.0354126, -0.0042788, -0.00330696)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.990691, -0.136028, 0.00299582, -0.00432016)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.939575, -0.342096, 0.011853, -0.00539456)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.867108, -0.497734, 0.0186368, -0.00608668)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.831283, -0.55541, 0.0211758, -0.00631154)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.853364, -0.520909, 0.0196552, -0.00617932)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.901021, -0.433449, 0.0158238, -0.00581483)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.946605, -0.322165, 0.0109906, -0.00529799)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.973994, -0.226417, 0.00686498, -0.00481161)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.98246, -0.186347, 0.00514682, -0.0045975)
            }
        }
        KeyframeGroup {
            target: ear02_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.49012e-08, 0.300295, 1.86265e-09)
            }
        }
        KeyframeGroup {
            target: ear02_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-5.21541e-08, 0.300295, -1.3737e-08)
            }
        }
        KeyframeGroup {
            target: fleg01_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.378459, 0.918545, -0.0624337, 0.0956315)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.487213, 0.8657, -0.050444, 0.103161)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.692585, 0.712025, -0.0226135, 0.113295)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.824954, 0.553541, 0.0012078, 0.1142)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.878729, 0.46389, 0.0134644, 0.111628)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.90839, 0.40277, 0.0212184, 0.11024)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.92399, 0.365365, 0.0256815, 0.109965)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.931082, 0.346614, 0.0277897, 0.110333)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.93291, 0.34152, 0.0283256, 0.110637)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.931893, 0.34436, 0.0280247, 0.110483)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.927783, 0.355428, 0.0267771, 0.110331)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.91868, 0.378438, 0.0240553, 0.110606)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.901783, 0.417078, 0.019277, 0.111637)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.872547, 0.474992, 0.0117486, 0.1136)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.809969, 0.57505, -0.00194728, 0.115174)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.69628, 0.708441, -0.0220072, 0.113227)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.5522, 0.82575, -0.0424438, 0.10682)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.428939, 0.896056, -0.0570534, 0.0991993)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.378459, 0.918545, -0.0624337, 0.0956315)
            }
        }
        KeyframeGroup {
            target: fleg01_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.37846, 0.918546, 0.062432, -0.0956274)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.487214, 0.8657, 0.0504418, -0.103157)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.692585, 0.712025, 0.0226104, -0.113292)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.824954, 0.553541, -0.00121148, -0.114198)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.878728, 0.463891, -0.0134683, -0.111625)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.90839, 0.402771, -0.0212225, -0.110238)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.92399, 0.365365, -0.0256856, -0.109964)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.931082, 0.346614, -0.0277939, -0.110331)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.93291, 0.34152, -0.0283298, -0.110636)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.929681, 0.350308, -0.0278294, -0.110468)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.919208, 0.377109, -0.0261025, -0.110293)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.89933, 0.42247, -0.0227737, -0.110483)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.865908, 0.487371, -0.0173499, -0.111229)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.811549, 0.573285, -0.00912986, -0.112465)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.72704, 0.677314, 0.00485507, -0.112409)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.616772, 0.779167, 0.0239959, -0.109155)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.502145, 0.857485, 0.0430302, -0.103526)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.413408, 0.903455, 0.0570422, -0.0980303)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.37846, 0.918546, 0.062432, -0.0956274)
            }
        }
        KeyframeGroup {
            target: fleg02_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(1.11759e-08, 0.622131, 2.23517e-08)
            }
        }
        KeyframeGroup {
            target: fleg02_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.966348, -0.251263, -0.00674777, -0.0547058)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.946704, -0.316541, 0.00432217, -0.0594539)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.89777, -0.434534, 0.0249675, -0.0675668)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.865417, -0.494638, 0.0358357, -0.0714397)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.869926, -0.486838, 0.0344106, -0.070948)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.880395, -0.468059, 0.0309978, -0.0697505)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.892348, -0.445342, 0.0269031, -0.068277)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.901892, -0.426086, 0.0234601, -0.0670076)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.905764, -0.417959, 0.0220142, -0.0664662)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.913446, -0.401229, 0.0190518, -0.0653419)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.930537, -0.360618, 0.0119342, -0.0625583)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.948537, -0.311092, 0.00338901, -0.0590643)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.961501, -0.269006, -0.00376221, -0.0560135)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.966348, -0.251263, -0.00674777, -0.0547058)
            }
        }
        KeyframeGroup {
            target: fleg02_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.622131, 0)
            }
        }
        KeyframeGroup {
            target: fleg02_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.966348, -0.251263, 0.00674777, 0.0547058)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.946704, -0.316541, -0.00432216, 0.0594539)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.89777, -0.434535, -0.0249676, 0.0675668)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.865417, -0.494638, -0.0358357, 0.0714397)
            }
            Keyframe {
                frame: 166.667
                value: Qt.quaternion(0.868863, -0.488643, -0.0351018, 0.0712236)
            }
            Keyframe {
                frame: 208.333
                value: Qt.quaternion(0.877316, -0.47354, -0.0330768, 0.0705867)
            }
            Keyframe {
                frame: 250
                value: Qt.quaternion(0.887945, -0.453669, -0.0300284, 0.0695479)
            }
            Keyframe {
                frame: 291.667
                value: Qt.quaternion(0.898159, -0.433563, -0.0262407, 0.0681496)
            }
            Keyframe {
                frame: 333.333
                value: Qt.quaternion(0.905764, -0.417959, -0.0220142, 0.0664663)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.909539, -0.410188, -0.0176302, 0.0645992)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.910939, -0.407538, -0.0132676, 0.0626692)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.911923, -0.405732, -0.00907327, 0.0607896)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.914388, -0.400473, -0.00519094, 0.0590683)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.920113, -0.38739, -0.00176343, 0.0576049)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.93061, -0.361623, 0.00114239, 0.0565056)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.943514, -0.326595, 0.00351252, 0.0557271)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.955223, -0.29065, 0.00527686, 0.0551758)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.96333, -0.262577, 0.00636498, 0.0548538)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.966348, -0.251263, 0.00674777, 0.0547058)
            }
        }
        KeyframeGroup {
            target: fleg03_L
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(3.72529e-09, 0.503092, -2.468e-08)
            }
        }
        KeyframeGroup {
            target: fleg03_L
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.841025, -0.537704, -0.0194263, -0.0563462)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.927281, -0.367292, -0.0310024, -0.0654628)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.995784, 0.00780676, -0.0503831, -0.0762509)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.975412, 0.198151, -0.0574466, -0.0775099)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.980068, 0.173934, -0.0566415, -0.077491)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.989523, 0.109215, -0.0543465, -0.0772229)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.995668, 0.0160044, -0.0506796, -0.0762886)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.991851, -0.0926993, -0.0458742, -0.0743966)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.975509, -0.204039, -0.0403629, -0.0715659)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.948082, -0.308743, -0.0345763, -0.0679858)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.913563, -0.400586, -0.0289441, -0.0639958)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.878623, -0.473089, -0.024092, -0.0602267)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.851638, -0.520563, -0.0206982, -0.0574278)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.841025, -0.537704, -0.0194263, -0.0563462)
            }
        }
        KeyframeGroup {
            target: fleg03_R
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(3.72529e-09, 0.503092, 8.3819e-09)
            }
        }
        KeyframeGroup {
            target: fleg03_R
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.841025, -0.537704, 0.0194262, 0.0563461)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.quaternion(0.927281, -0.367292, 0.0310024, 0.0654628)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.quaternion(0.995784, 0.00780682, 0.0503831, 0.0762509)
            }
            Keyframe {
                frame: 125
                value: Qt.quaternion(0.975412, 0.198151, 0.0574466, 0.0775099)
            }
            Keyframe {
                frame: 375
                value: Qt.quaternion(0.981646, 0.166521, 0.053101, 0.0763031)
            }
            Keyframe {
                frame: 416.667
                value: Qt.quaternion(0.992857, 0.0840343, 0.0424566, 0.0732851)
            }
            Keyframe {
                frame: 458.333
                value: Qt.quaternion(0.996722, -0.0297383, 0.0292077, 0.0693343)
            }
            Keyframe {
                frame: 500
                value: Qt.quaternion(0.985862, -0.153128, 0.0174488, 0.0657517)
            }
            Keyframe {
                frame: 541.667
                value: Qt.quaternion(0.96163, -0.266448, 0.0113154, 0.0643745)
            }
            Keyframe {
                frame: 583.333
                value: Qt.quaternion(0.930342, -0.360935, 0.0108783, 0.0638039)
            }
            Keyframe {
                frame: 625
                value: Qt.quaternion(0.897487, -0.436504, 0.0127289, 0.0618053)
            }
            Keyframe {
                frame: 666.667
                value: Qt.quaternion(0.868544, -0.491803, 0.0156081, 0.05931)
            }
            Keyframe {
                frame: 708.333
                value: Qt.quaternion(0.848406, -0.525928, 0.0182591, 0.0572143)
            }
            Keyframe {
                frame: 750
                value: Qt.quaternion(0.841025, -0.537704, 0.0194262, 0.0563461)
            }
        }
    }
}
