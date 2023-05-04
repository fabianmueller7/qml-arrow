#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "animator.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Animator>("Animator",1,0, "Animator");

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/qml-arrow/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
