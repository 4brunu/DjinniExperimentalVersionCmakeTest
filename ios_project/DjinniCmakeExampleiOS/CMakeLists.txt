cmake_minimum_required(VERSION 3.0)

set(PROJECT_NAME DjinniCmakeExample)
project(${PROJECT_NAME})


file(GLOB SRCS
  "../../deps/djinni/support-lib/objc/*"
  "../../generated-src/cpp/*"
  "../../generated-src/objc/*"
  )

include_directories(
  #"../../deps/djinni/support-lib/objc/"
  #"../../deps/djinni/support-lib/"
  #"../../deps/djinni/"
  "../../generated-src/cpp/"
  "../../generated-src/objc/"
  )


add_library(${PROJECT_NAME} STATIC ${SRCS})
target_link_libraries(${PROJECT_NAME} djinni)
