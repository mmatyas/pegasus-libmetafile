CONFIG += testcase no_testcase_installs

QT += qml testlib
CONFIG += c++11 warn_on

TARGET = test_Metafile
SOURCES = $${TARGET}.cpp
DEFINES += QT_DEPRECATED_WARNINGS QT_DISABLE_DEPRECATED_BEFORE=0x060000
RESOURCES += tests.qrc


# Link to implementation

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../src/release/ -lpegasus-metafile
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../src/debug/ -lpegasus-metafile
else:unix: LIBS += -L$$OUT_PWD/../src/ -lpegasus-metafile

INCLUDEPATH += $$PWD/../src
DEPENDPATH += $$PWD/../src

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../src/release/libpegasus-metafile.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../src/debug/libpegasus-metafile.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../src/release/pegasus-metafile.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../src/debug/pegasus-metafile.lib
else:unix: PRE_TARGETDEPS += $$OUT_PWD/../src/libpegasus-metafile.a
