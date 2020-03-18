#include "dialog.h"
#include "ui_dialog.h"
#include <QDebug>
#include "library.h"
#include <QMessageBox>

Dialog::Dialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Dialog)
{
    ui->setupUi(this);
}

Dialog::~Dialog()
{
    delete ui;
}
void Dialog::calculate() {
    bool isAOK, isBOK;
    int a = ui->lineEditA->text().toInt(&isAOK);
    int b = ui->lineEditB->text().toInt(&isBOK);
    if(!isAOK) {
            QMessageBox::critical(this, "Ошибка", "A должно быть числом");
            return;
    }
    if(!isBOK) {
            QMessageBox::critical(this, "Ошибка", "B должно быть числом");
            return;
    }
    if(a < 0){
            QMessageBox::critical(this, "Ошибка", "A должно быть положительным числом");
            return;
    }
    if (b < 0){
            QMessageBox::critical(this, "Ошибка", "B должно быть положительным числом");
            return;
    }
    if (a > b){
            QMessageBox::critical(this, "Ошибка", "A должно быть меньше B");
            return;
    }
    // вызов функции получения списка простых чисел
    for(int n: list(a, b))
    {
        ui->listWidget->addItem(QString::number(n));
    }
}
