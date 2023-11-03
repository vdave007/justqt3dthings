#ifndef BASIC3DFROMFILE_H
#define BASIC3DFROMFILE_H

#include "base3dview.h"

class Basic3DFromFile : public Base3DView
{
public:
    Basic3DFromFile();
protected:
    virtual void createEntity() override;
};

#endif // BASIC3DFROMFILE_H
