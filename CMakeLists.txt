cmake_minimum_required(VERSION 3.0)

project(djinnicmakeexample_all)

# Get root directory.
set(dir ${CMAKE_CURRENT_SOURCE_DIR})

if (ANDROID)
  message(STATUS "Android build!")

  # Set compiler flags.
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14 -fexceptions -frtti -Wall")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall")

  set(DJINNI_WITH_JNI ON CACHE BOOL "Include the JNI support code in Djinni.")


  # Add projects.
  add_subdirectory(deps/djinni)
  add_subdirectory(android_project/DjinniCmakeExampleAndroid/app/src/main/cpp)


elseif(IOS_PLATFORM)
  message(STATUS "IOS build!")


  # Set output directories.
  set(PLATFORM_NAME ${IOS_PLATFORM})

  set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${dir}/cmake/bin/ios")
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${dir}/cmake/bin/ios")
  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${dir}/cmake/bin/ios")

  set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/Debug/${PLATFORM_NAME}")
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG "${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/Debug/${PLATFORM_NAME}")
  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/Debug/${PLATFORM_NAME}")

  set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/Release/${PLATFORM_NAME}")
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE "${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/Release/${PLATFORM_NAME}")
  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE "${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}/Release/${PLATFORM_NAME}")

  message(STATUS "CMAKE_RUNTIME_OUTPUT_DIRECTORY: ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}")
  message(STATUS "CMAKE_LIBRARY_OUTPUT_DIRECTORY: ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}")
  message(STATUS "CMAKE_ARCHIVE_OUTPUT_DIRECTORY: ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}")


  # Set compiler flags.
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fobjc-arc -std=c++14 -stdlib=libc++ -Wall")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fobjc-arc -Wall")

  set(CMAKE_XCODE_ATTRIBUTE_IPHONEOS_DEPLOYMENT_TARGET "8.0")

  set(DJINNI_WITH_OBJC ON CACHE BOOL "Include the Objective-C support code in Djinni.")
  set(DJINNI_FRAMEWORK OFF CACHE BOOL "If enabled the Objective-C binary of Djinni is built as djinni.framework otherwise as djinni.dylib on Apple systems.")


  # Add projects.
  add_subdirectory(deps/djinni)
  add_subdirectory(ios_project/DjinniCmakeExampleiOS)

  set_target_properties(djinni PROPERTIES XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "iPhone Developer")

endif(ANDROID)
