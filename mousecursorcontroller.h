#ifndef MOUSECURSORCONTROLLER_H
#define MOUSECURSORCONTROLLER_H

#include <QObject>
#include <QtQml/qqmlregistration.h>
#include <QVector3D>
#include <QQuick3DObject>

class MouseCursorController : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(float movementSpeed READ movementSpeed WRITE setMovementSpeed NOTIFY movementSpeedChanged FINAL)
    Q_PROPERTY(QQuick3DObject* targetObject READ targetObject WRITE setTargetObject NOTIFY targetObjectChanged FINAL)
public:
    explicit MouseCursorController(QObject *parent = nullptr);

    float movementSpeed() const;
    void setMovementSpeed(float newMovementSpeed);

    QQuick3DObject *targetObject() const;
    void setTargetObject(QQuick3DObject *newTargetObject);

private:
    QVector2D getMovementSinceLastReset();
    QVector3D getCameraMovement(float frameTime);


public slots:
    void start();
    void stop();
    void resetCursor(bool forced=false);
    void update(float frameTime);

signals:
    void controlledObjectRotationChanged();

    void movementSpeedChanged();

    void targetedRotationChanged();

    void targetObjectChanged();

private:
    bool m_isRunning;
    QVector2D m_lastPosition;
    float m_movementSpeed;
    QQuick3DObject *m_targetObject = nullptr;
};

#endif // MOUSECURSORCONTROLLER_H
