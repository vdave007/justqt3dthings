#ifndef BASIC3DSHAPES_H
#define BASIC3DSHAPES_H

#include "base3dview.h"

class Basic3DShapes : public Base3DView
{
public:
    Basic3DShapes();

protected:
    virtual void createEntity() override;
};

#endif // BASIC3DSHAPES_H
