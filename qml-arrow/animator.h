#ifndef ANIMATOR_H
#define ANIMATOR_H

#include <QObject>

class Animator : public QObject
{
    Q_OBJECT
public:
    explicit Animator(QObject *parent = nullptr);

signals:

public slots:
    void drawArrow(QString direction);

};

#endif // ANIMATOR_H
