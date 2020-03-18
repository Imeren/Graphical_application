#-------------------------------------------------
#
# Project created by QtCreator 2020-02-26T10:44:00
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = laba2
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        dialog.cpp

HEADERS += \
        dialog.h

FORMS += \
        dialog.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

CONFIG(release, debug|release) { BUILDTYPE = release }
CONFIG(debug, debug|release) { BUILDTYPE = debug }
QMAKE_POST_LINK = windeployqt $$shell_quote($${OUT_PWD}/$${BUILDTYPE}/$${TARGET}.exe)

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../laba_4/build-Library-Desktop-All/release/ -lLibrary
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../laba_4/build-Library-Desktop-All/debug/ -lLibrary
else:unix: LIBS += -L$$PWD/../../laba_4/build-Library-Desktop-All/ -lLibrary

INCLUDEPATH += $$PWD/../../laba_4/Library
DEPENDPATH += $$PWD/../../laba_4/Library

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../laba_4/build-Library-Desktop-All/release/libLibrary.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../laba_4/build-Library-Desktop-All/debug/libLibrary.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$PWD/../../laba_4/build-Library-Desktop-All/release/Library.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$PWD/../../laba_4/build-Library-Desktop-All/debug/Library.lib
else:unix: PRE_TARGETDEPS += $$PWD/../../laba_4/build-Library-Desktop-All/libLibrary.a

DISTFILES += \
    .astylerc
