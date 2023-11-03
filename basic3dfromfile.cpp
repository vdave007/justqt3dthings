#include "basic3dfromfile.h"
#include <Qt3DCore/QEntity>
#include <Qt3DRender/qsceneloader.h>

#include <QDebug>

Basic3DFromFile::Basic3DFromFile()
{

}

void Basic3DFromFile::createEntity()
{
    qDebug() << "Creating scene loader entity";
    Qt3DCore::QEntity* sceneLoaderEntity;
    sceneLoaderEntity = new Qt3DCore::QEntity(rootEntity);

    Qt3DRender::QSceneLoader* loader;
    loader = new Qt3DRender::QSceneLoader(sceneLoaderEntity);
    loader->setObjectName("felgologo3d.obj");
    sceneLoaderEntity->addComponent(loader);
    loader->setSource(QUrl(QString("file:../justqt3dthings/Felgologo3d.obj")));
}
