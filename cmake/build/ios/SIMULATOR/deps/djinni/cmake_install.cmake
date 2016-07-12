# Install script for directory: /Users/bruno.coelho/Developer/DjinniCmakeExample/deps/djinni

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/bruno.coelho/Developer/DjinniCmakeExample/cmake/install/ios/SIMULATOR")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE DIRECTORY FILES "/Users/bruno.coelho/Developer/DjinniCmakeExample/cmake/bin/ios/Debug/SIMULATOR/djinni.framework" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/djinni" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/djinni")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "djinni.framework/djinni"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/djinni")
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE DIRECTORY FILES "/Users/bruno.coelho/Developer/DjinniCmakeExample/cmake/bin/ios/Release/SIMULATOR/djinni.framework" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/djinni" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/djinni")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "djinni.framework/djinni"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/djinni")
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE DIRECTORY FILES "/Users/bruno.coelho/Developer/DjinniCmakeExample/cmake/bin/ios/MinSizeRel/djinni.framework" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/djinni" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/djinni")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "djinni.framework/djinni"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/djinni")
    endif()
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE DIRECTORY FILES "/Users/bruno.coelho/Developer/DjinniCmakeExample/cmake/bin/ios/RelWithDebInfo/djinni.framework" USE_SOURCE_PERMISSIONS)
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/djinni" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/djinni")
      execute_process(COMMAND "/usr/bin/install_name_tool"
        -id "djinni.framework/djinni"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/djinni")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/bruno.coelho/Developer/DjinniCmakeExample/deps/djinni/include/djinni")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/djinni.framework/Header" TYPE DIRECTORY FILES "/Users/bruno.coelho/Developer/DjinniCmakeExample/deps/djinni/include/djinni/")
endif()

