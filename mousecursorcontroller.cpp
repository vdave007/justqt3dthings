#include "mousecursorcontroller.h"
#include <QDebug>
#include <QCursor>
#include <QScreen>
#include <QApplication>
#include <QVector2D>
#include <QVector3D>

MouseCursorController::MouseCursorController(QObject *parent)
    : QObject{parent}
    , m_isRunning(false)
    , m_lastPosition(0,0)
    , m_movementSpeed(0.1)
    , m_targetObject(nullptr)
{

}

void MouseCursorController::start()
{
    m_isRunning = true;
}

void MouseCursorController::stop()
{
    m_isRunning = false;
}

QVector2D MouseCursorController::getMovementSinceLastReset()
{
    QVector2D currentPosition = QVector2D(QCursor::pos());
    QVector2D movement(currentPosition - m_lastPosition);

    m_lastPosition = currentPosition;

    return movement;
}

QVector3D MouseCursorController::getCameraMovement(float frameTime)
{
    QVector3D newMovement = m_targetObject->property("eulerRotation").value<QVector3D>();
    QVector2D movement = getMovementSinceLastReset();

    newMovement.setY(newMovement.y() + (movement.x() * -m_movementSpeed * frameTime));
    newMovement.setX(newMovement.x() + (movement.y() * -m_movementSpeed * frameTime));

    return newMovement;
}

void MouseCursorController::resetCursor(bool forced)
{
    if(QApplication::focusWindow() || forced)
    {
        QScreen *screen = QApplication::primaryScreen();
        QRect  screenGeometry = screen->geometry();
        int height = screenGeometry.height();
        int width = screenGeometry.width();
        QPoint lastPos(width/2, height/2);
        QCursor::setPos(lastPos);
        m_lastPosition = QVector2D(lastPos);
    }

}

float MouseCursorController::movementSpeed() const
{
    return m_movementSpeed;
}

void MouseCursorController::setMovementSpeed(float newMovementSpeed)
{
    if (qFuzzyCompare(m_movementSpeed, newMovementSpeed))
        return;
    m_movementSpeed = newMovementSpeed;
    emit movementSpeedChanged();
}

void MouseCursorController::update(float frameTime)
{
    if(QApplication::focusWindow() && m_isRunning)
    {
        m_targetObject->setProperty("eulerRotation", getCameraMovement(frameTime * 100));
        resetCursor();
    }
}

QQuick3DObject *MouseCursorController::targetObject() const
{
    return m_targetObject;
}

void MouseCursorController::setTargetObject(QQuick3DObject *newTargetObject)
{
    // Maybe bug prone? See how to check if it has needed property, because QQuick3DNode is not public!
    if (m_targetObject == newTargetObject)
        return;
    m_targetObject = newTargetObject;
    emit targetObjectChanged();
}
