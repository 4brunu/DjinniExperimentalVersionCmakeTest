cmake_minimum_required(VERSION 3.4.1)

set(PROJECT_NAME djinnicmakeexample)
project(${PROJECT_NAME})

# Get root directory.
set(dir ${CMAKE_SOURCE_DIR})

file(GLOB_RECURSE SRCS

  #Source
  "${dir}/src/main/cpp/*"

  #Djinni generated source
  "${dir}/generated-src/cpp/*"
  "${dir}/generated-src/jni/*"

  )

include_directories(

  #Source
  "${dir}/src/main/cpp/"

  #Djinni generated source
  "${dir}/generated-src/cpp/"
  "${dir}/generated-src/jni/"

  )

add_library(${PROJECT_NAME} SHARED
    ${SRCS})

target_link_libraries(${PROJECT_NAME} djinni)
