QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets axcontainer

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    qexcel.cpp

HEADERS += \
    TekVisa.h \
    mainwindow.h \
    qexcel.h \
    visa.h \
    visatype.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32: LIBS += -L$$PWD/'../../../../../../../../../Program Files (x86)/Windows Kits/10/Lib/10.0.20348.0/um/x86/' -lshell32

INCLUDEPATH += $$PWD/'../../../../../../../../../Program Files (x86)/Windows Kits/10/Lib/10.0.20348.0/um/x86'
DEPENDPATH += $$PWD/'../../../../../../../../../Program Files (x86)/Windows Kits/10/Lib/10.0.20348.0/um/x86'

win32: LIBS += -L$$PWD/./ -lvisa32

INCLUDEPATH += $$PWD/.
DEPENDPATH += $$PWD/.

win32: LIBS += -L$$PWD/./ -ltkVisa32

INCLUDEPATH += $$PWD/.
DEPENDPATH += $$PWD/.
QT += network
