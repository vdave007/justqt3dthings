#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

class QQuickWidget;
class Basic3D;
class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
private:
    void createUi();
private:
    QVector<QQuickWidget *> quickWidgets;
    Basic3D* basic3dView;
};
#endif // MAINWINDOW_H
