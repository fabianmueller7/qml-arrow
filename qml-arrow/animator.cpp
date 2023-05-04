#include "animator.h"
#include <QDebug>

Animator::Animator(QObject *parent)
    : QObject{parent}
{

}

void Animator::drawArrow(QString direction)
{
    qDebug() << "About to draw:" << direction  ;
}
