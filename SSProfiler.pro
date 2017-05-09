#-------------------------------------------------
#
# Project created by QtCreator 2015-06-10T16:57:45
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = MicrophoneControl
TEMPLATE = app


SOURCES += src/main.cpp\
        src/overlaywidget.cpp \
		src/overlaycontroller.cpp \
		src/audiomanager/audiomanagerwindows.cpp


HEADERS  += src/overlaywidget.h \
		src/overlaycontroller.h \
		src/logging.h \
		src/audiomanager.h \
		src/audiomanager/audiomanagerwindows.h

FORMS    += ui/overlaywidget.ui

INCLUDEPATH += third-party/openvr/include \
			third-party/easylogging++

DESTDIR = bin/win64

win32: LIBS += -L$$PWD/third-party/openvr/lib/win64/ -lopenvr_api

INCLUDEPATH += $$PWD/third-party/openvr/include
DEPENDPATH += $$PWD/third-party/openvr/include

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/third-party/openvr/lib/win64/openvr_api.lib
else:win32-g++: PRE_TARGETDEPS += $$PWD/third-party/openvr/lib/win64/libopenvr_api.a
