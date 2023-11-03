#ifndef BASIC3D_H
#define BASIC3D_H

#include <Qt3DExtras/qt3dwindow.h>

class Basic3D : public Qt3DExtras::Qt3DWindow
{
    Q_OBJECT
public:
    explicit Basic3D(QScreen *parent = nullptr);
    QWidget* getWidget();
private:
    void createEntity();
    void createCamera();
    void createLight();
    void loadCustomMesh();
private:
    QWidget* widget;
    Qt3DCore::QEntity* rootEntity;
    Qt3DCore::QEntity* lightEntity;

signals:

};

#endif // BASIC3D_H
