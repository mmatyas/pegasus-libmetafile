#-------------------------------------------------
#
# Project created by QtCreator 2019-05-08T18:01:54
#
#-------------------------------------------------



TEMPLATE = subdirs
SUBDIRS += src
OTHER_FILES += pegasus-metafile.pri

qtHaveModule(testlib):!android {
    SUBDIRS += tests
    tests.depends = src
    tests.CONFIG = no_default_install
}
