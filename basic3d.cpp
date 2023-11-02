#include "basic3d.h"
#include <QtGui/QScreen>
#include <QWidget>

#include <Qt3DExtras/qt3dwindow.h>
#include <Qt3DExtras/qforwardrenderer.h>
#include <Qt3DExtras/QTorusMesh>
#include <Qt3DRender/QCamera>
#include <Qt3DCore/qentity.h>
#include <Qt3DRender/qcameralens.h>
#include <Qt3DRender/qpointlight.h>
#include <Qt3DExtras/qfirstpersoncameracontroller.h>
#include <Qt3DExtras/QPhongMaterial>
#include "qorbitcameracontroller.h"

Basic3D::Basic3D(QScreen *parent)
    : Qt3DExtras::Qt3DWindow{parent}
{
    this->defaultFrameGraph()->setClearColor(QColor(QRgb(0x4d4d4f)));
    widget = QWidget::createWindowContainer(this);
    widget->setWindowTitle("C++3D");
    createEntity();
    createCamera();
    this->setRootEntity(rootEntity);
}

QWidget *Basic3D::getWidget()
{
    return widget;
}

void Basic3D::createEntity()
{
    rootEntity = new Qt3DCore::QEntity();

    // Material
    Qt3DRender::QMaterial *material = new Qt3DExtras::QPhongMaterial(rootEntity);

    // Torus
    Qt3DCore::QEntity *torusEntity = new Qt3DCore::QEntity(rootEntity);
    Qt3DExtras::QTorusMesh *torusMesh = new Qt3DExtras::QTorusMesh;
    torusMesh->setRadius(5);
    torusMesh->setMinorRadius(1);
    torusMesh->setRings(100);
    torusMesh->setSlices(20);

    Qt3DCore::QTransform *torusTransform = new Qt3DCore::QTransform;
    torusTransform->setScale(2.0f);
    torusTransform->setRotation(QQuaternion::fromAxisAndAngle(QVector3D(1, 0, 0), 45.0f));

    torusEntity->addComponent(torusMesh);
    torusEntity->addComponent(torusTransform);
    torusEntity->addComponent(material);
}

void Basic3D::createCamera()
{
    Qt3DRender::QCamera *camera = this->camera();
    camera->lens()->setPerspectiveProjection(45.0f, 16.0f/9.0f, 0.1f, 1000.0f);
    camera->setPosition(QVector3D(0, 0, 40.0f));
    camera->setViewCenter(QVector3D(0, 0, 0));

    // For camera controls
    Qt3DExtras::QOrbitCameraController *camController = new Qt3DExtras::QOrbitCameraController(rootEntity);
    camController->setLinearSpeed( 50.0f );
    camController->setLookSpeed( 180.0f );
    camController->setCamera(camera);
}
