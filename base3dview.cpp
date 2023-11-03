#include "base3dview.h"
#include <QWidget>

#include <Qt3DExtras/qt3dwindow.h>
#include <Qt3DExtras/qforwardrenderer.h>
#include <Qt3DRender/QCamera>
#include <Qt3DCore/qentity.h>
#include <Qt3DRender/qcameralens.h>
#include <Qt3DRender/qpointlight.h>
#include <Qt3DRender/qsceneloader.h>
#include <Qt3DExtras/qfirstpersoncameracontroller.h>
#include <Qt3DExtras/QPhongMaterial>
#include "qorbitcameracontroller.h"

Base3DView::Base3DView()
  : Qt3DExtras::Qt3DWindow()
  , widget(QWidget::createWindowContainer(this))
{
    this->defaultFrameGraph()->setClearColor(QColor(QRgb(0x4d4d4f)));
    widget->setWindowTitle("TEMP");
    rootEntity = new Qt3DCore::QEntity();
    this->setRootEntity(rootEntity);
}

void Base3DView::init() {
    //Init
    createEntity();
    createCamera();
    createLight();
}

QWidget *Base3DView::getWidget()
{
    return widget;
}

void Base3DView::createEntity()
{
    //Empty
}

void Base3DView::createCamera()
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

void Base3DView::createLight()
{
    lightEntity = new Qt3DCore::QEntity(rootEntity);

    // Creates a light in the middle
    Qt3DRender::QPointLight *light = new Qt3DRender::QPointLight(lightEntity);
    light->setColor("white");
    light->setIntensity(1);
    lightEntity->addComponent(light);

    // Move light from middle
    Qt3DCore::QTransform *lightTransform = new Qt3DCore::QTransform(lightEntity);
    lightTransform->setTranslation(QVector3D(0, 20, 20));
    lightEntity->addComponent(lightTransform);

}
