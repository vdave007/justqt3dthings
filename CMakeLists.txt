cmake_minimum_required(VERSION 3.5)

project(3dmultitool VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 COMPONENTS Core)
find_package(Qt6 COMPONENTS Gui)
find_package(Qt6 COMPONENTS Widgets)
find_package(Qt6 COMPONENTS Qml)
find_package(Qt6 COMPONENTS Quick)
find_package(Qt6 COMPONENTS QuickWidgets)
find_package(Qt6 COMPONENTS Quick3D)

find_package(Qt6 COMPONENTS 3DCore)
find_package(Qt6 COMPONENTS 3DExtras)
find_package(Qt6 COMPONENTS 3DInput)
find_package(Qt6 COMPONENTS 3DRender)


set(PROJECT_SOURCES
        main.cpp
        mainwindow.cpp
        mainwindow.h
        base3dview.h base3dview.cpp
        basic3dfromfile.h basic3dfromfile.cpp
        basic3dshapes.h basic3dshapes.cpp
)

qt_add_executable(3dmultitool ${PROJECT_SOURCES})

qt6_add_resources(3dmultitool "3dmultitool"
    PREFIX
        "/"
    FILES
        "basic3d.qml"
        "Felgologo3d.qml"
        "meshes/cube.mesh"
    )


target_link_libraries(3dmultitool PUBLIC
    Qt::Core
    Qt::Gui
    Qt::Widgets
    Qt::Qml
    Qt::Quick
    Qt::QuickWidgets
    Qt::Quick3D
    Qt::3DCore
    Qt::3DExtras
    Qt::3DInput
    Qt::3DRender
)
