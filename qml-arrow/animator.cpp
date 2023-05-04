#include "animator.h"
#include <QDebug>

Animator::Animator(QObject *parent)
    : QObject{parent}
{

}

void Animator::drawArrow()
{
    qDebug() << "About to draw something";
}
