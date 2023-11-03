#include "mainwindow.h"

#include <QMenu>
#include <QMenuBar>
#include <QWidget>
#include <QHBoxLayout>
#include <QTextEdit>
#include <QTabWidget>
#include <QQuickWidget>

#include "base3dview.h"
#include "basic3dfromfile.h"
#include "basic3dshapes.h"


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    createUi();
}

MainWindow::~MainWindow()
{
}

void MainWindow::createUi()
{
    QMenu *fileMenu = this->menuBar()->addMenu("File");
    fileMenu->addAction("Exit", this, &QWidget::close);

    QHBoxLayout *horizontalLayout = new QHBoxLayout;
    QWidget* widget = new QWidget; // move to h

    widget->setLayout(horizontalLayout);
    this->setCentralWidget(widget);

    QTabWidget *tabs = new QTabWidget; // move to h
    horizontalLayout->addWidget(tabs);
    horizontalLayout->setStretch(0, 2);
    horizontalLayout->setStretch(1, 8);

    QQuickWidget *quickWidget;

    quickWidget = new QQuickWidget;
    quickWidget->setWindowTitle("Qt Quick 3D");
    quickWidget->setResizeMode(QQuickWidget::SizeRootObjectToView);
    quickWidget->setSource(QUrl("qrc:/basic3d.qml"));
    quickWidgets.append(quickWidget);

    for (QQuickWidget *qw : quickWidgets)
        tabs->addTab(qw, qw->windowTitle());

    {
        Base3DView* fromFileView = new Basic3DFromFile();
        fromFileView->init();
        QWidget* fromFileWidget = fromFileView->getWidget();
        fromFileWidget->setWindowTitle("C++ from file");

        tabs->addTab(fromFileWidget, fromFileWidget->windowTitle());
    }

    {
        Base3DView* fromFileView = new Basic3DShapes();
        fromFileView->init();
        QWidget* fromFileWidget = fromFileView->getWidget();
        fromFileWidget->setWindowTitle("C++ basic shapes");

        tabs->addTab(fromFileWidget, fromFileWidget->windowTitle());
    }


    this->resize(1280, 720);


}

