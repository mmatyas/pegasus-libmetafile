QT -= gui

TARGET = pegasus-metafile
TEMPLATE = lib
CONFIG += c++11 staticlib warn_on

DEFINES += \
    QT_DEPRECATED_WARNINGS \
    QT_DISABLE_DEPRECATED_BEFORE=0x060000 \
    QT_NO_CAST_TO_ASCII \

SOURCES += PegasusMetafile.cpp
HEADERS += PegasusMetafile.h
