#ifndef BASE3DVIEW_H
#define BASE3DVIEW_H

#include <Qt3DExtras/Qt3DWindow>

class Base3DView : public Qt3DExtras::Qt3DWindow
{
public:
    Base3DView();
    QWidget* getWidget();
    void init();
protected:
    virtual void createEntity();
    virtual void createCamera();
    virtual void createLight();
protected:
    QWidget* widget;
    Qt3DCore::QEntity* rootEntity;
    Qt3DCore::QEntity* lightEntity;
};

#endif // BASE3DVIEW_H
