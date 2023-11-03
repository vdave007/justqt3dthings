import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    id: root

    property alias valueX: sizeX.value
    property alias valueY: sizeY.value
    property alias valueZ: sizeZ.value

    property var valuesVector: Qt.vector3d(valueX, valueY, valueZ)

    Column {
        Row {
            Text {
                text: "X:"
            }

            Slider {
                id: sizeX
                value: 1
                from: 0.1
                to: 5
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
                from: 0.1
                to: 5
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
                from: 0.1
                to: 5
            }

            Text {
                text: sizeZ.value
            }
        }
    }
}
