import QtQuick
import QtQuick3D

Node {
    // Materials
    DefaultMaterial {
        id: defaultMaterial_material
        diffuseColor: "#FFF04E26"
    }
    // end of Materials

    Node {
        id: felgologo3d_obj
        Model {
            id: cube
            source: "meshes/cube.mesh"
            materials: [
                defaultMaterial_material
            ]
        }
    }
}
