cmake_minimum_required(VERSION 3.16)

project(qml-arrow VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appqml-arrow
    main.cpp
)


qt_add_qml_module(appqml-arrow
    URI qml-arrow
    VERSION 1.0
    QML_FILES Main.qml
)

qt_add_qml_module(Animator
    URI Animator
    VERSION 1.0
    SOURCES animator.h animator.cpp
    NO_PLUGIN
    OUTPUT_TARGETS ANIMATOR_DEPS
)

set_target_properties(appqml-arrow PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appqml-arrow
    PRIVATE Qt6::Quick Animator ${ANIMATOR_DEPS}
)

install(TARGETS appqml-arrow
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
