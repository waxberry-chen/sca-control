#-------------------------------------------------
#
# Project created by QtCreator 2016-07-23T16:37:40
#
#-------------------------------------------------

QT       += core gui serialport charts network
QT       += axcontainer
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

TARGET = Com
TEMPLATE = app


SOURCES += main.cpp\
        FTDI_USB.cpp \
        control.cpp \
        mainwindow.cpp \
        ps3000aCon.c \
        qexcel.cpp

HEADERS  += mainwindow.h \
    FTDI_USB.h \
    PicoCallback.h \
    PicoConnectProbes.h \
    PicoDeviceDefinitionsExperimental.h \
    PicoDeviceEnums.h \
    PicoDeviceStructs.h \
    PicoStatus.h \
    PicoVersion.h \
    TekVisa.h \
    control.h \
    ftdi/ftd2xx.h \
    ps3000aApi.h \
    qexcel.h \
    visa.h \
    visatype.h

FORMS    += mainwindow.ui

#参考1：https://www.cnblogs.com/liushui-sky/p/9487583.html
#参考2：https://blog.csdn.net/junbujianwpl/article/details/55271323
#LIBS += -L $$PWD/ftdi/
#LIBS += "$$PWD/ftdi/ftd2xx.lib"

LIBS += -L$$PWD/ftdi/ -lftd2xx
INCLUDEPATH += $$PWD/ftdi
DEPENDPATH += $$PWD/ftdi




win32: LIBS += -L$$PWD/./-lps3000a

INCLUDEPATH += $$PWD/.
DEPENDPATH += $$PWD/.

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/./ps3000a.lib
#else:win32-g++: PRE_TARGETDEPS += $$PWD/./libps3000a.a


#win32: LIBS += -L$$PWD/./ -lvisa32

#INCLUDEPATH += $$PWD/.
#DEPENDPATH += $$PWD/.

win32: LIBS += -L$$PWD/./ -lvisa32

INCLUDEPATH += $$PWD/.
DEPENDPATH += $$PWD/.

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/./visa32.lib

