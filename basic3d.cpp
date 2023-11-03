#include "basic3d.h"
#include <QtGui/QScreen>
#include <QWidget>

#include <Qt3DExtras/qt3dwindow.h>
#include <Qt3DExtras/qforwardrenderer.h>
#include <Qt3DExtras/QTorusMesh>
#include <Qt3DExtras/QSphereMesh>
#include <Qt3DRender/QCamera>
#include <Qt3DCore/qentity.h>
#include <Qt3DRender/qcameralens.h>
#include <Qt3DRender/qpointlight.h>
#include <Qt3DRender/qsceneloader.h>
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
    createLight();
    loadCustomMesh();
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

    Qt3DCore::QEntity *sphereEntity = new Qt3DCore::QEntity(rootEntity);
    Qt3DExtras::QSphereMesh *sphereMesh = new Qt3DExtras::QSphereMesh;

    sphereMesh->setRadius(6);

    sphereEntity->addComponent(sphereMesh);
    sphereEntity->addComponent(material);
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

void Basic3D::createLight()
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

void Basic3D::loadCustomMesh()
{
    Qt3DCore::QEntity* sceneLoaderEntity;
    sceneLoaderEntity = new Qt3DCore::QEntity(rootEntity);

    Qt3DRender::QSceneLoader* loader;
    loader = new Qt3DRender::QSceneLoader(sceneLoaderEntity);
    loader->setObjectName("felgologo3d.obj");
    sceneLoaderEntity->addComponent(loader);
    loader->setSource(QUrl(QString("file:../justqt3dthings/Felgologo3d.obj")));

    Qt3DCore::QTransform *customTransform = new Qt3DCore::QTransform(sceneLoaderEntity);
    customTransform->setTranslation(QVector3D(0, 10, 0));
    sceneLoaderEntity->addComponent(customTransform);
}

