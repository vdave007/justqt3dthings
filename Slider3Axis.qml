import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root

    height: mainColumn.height
    width: mainColumn.width

    property alias valueX: sizeX.value
    property alias valueY: sizeY.value
    property alias valueZ: sizeZ.value

    property var valuesVector: Qt.vector3d(valueX, valueY, valueZ)

    property real upperLimit: 5.0
    property real lowerLimit: 0.0

    function setFromVector(vector) {
        valueX = vector.x;
        valueY = vector.y;
        valueZ = vector.z;
    }

    Column {
        id: mainColumn
        Row {
            Text {
                text: "X:"
            }

            Slider {
                id: sizeX
                value: 1
                from: lowerLimit
                to: upperLimit
            }

            Text {
                text: sizeX.value
            }
        }
        Row {
            Text {
                text: "Y:"
            }

            Slider {
                id: sizeY
                value: 1
                from: lowerLimit
                to: upperLimit
            }

            Text {
                text: sizeY.value
            }
        }
        Row {
            Text {
                text: "Z:"
            }

            Slider {
                id: sizeZ
                value: 1
                from: lowerLimit
                to: upperLimit
            }

            Text {
                text: sizeZ.value
            }
        }
    }
}
