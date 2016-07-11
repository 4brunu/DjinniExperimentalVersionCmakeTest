# DjinniCmakeExample

## How to run Cmake on iOS

`sh run_cmake_ios.sh`

##### Error with `DJINNI_FRAMEWORK` ENABLE
```
=== BUILD TARGET djinni OF PROJECT djinnicmakeexample_all WITH CONFIGURATION Release ===

Check dependencies
CodeSign error: code signing is required for product type 'Framework' in SDK 'iOS 9.3'

** BUILD FAILED **
```

##### Error with `DJINNI_FRAMEWORK` DISABLED
```
=== BUILD TARGET djinni OF PROJECT djinnicmakeexample_all WITH CONFIGURATION Release ===

Check dependencies
CodeSign error: code signing is required for product type 'Dynamic Library' in SDK 'iOS 9.3'

** BUILD FAILED **
```

##### Info
The build works with SIMLUATOR and SIMULATOR64 ABI's, but not the OS. [HERE](https://github.com/4brunu/DjinniCmakeExample/blob/master/run_cmake_ios.sh#L6)



## How to run Cmake on Android

1 - Open Android Studio 2.2 (the lastest release in 2016-07-11 was 2.2 Preview 5)
2 - Open the project under android_project directory
3 - Sync gradle

##### Error
```
Error while executing '/Applications/android-sdk-canary/cmake/bin/cmake' with arguments {-H/Users/4brunu/Developer/DjinniCmakeExample -B/Users/4brunu/Developer/DjinniCmakeExample/android_project/DjinniCmakeExampleAndroid/app/externalNativeBuild/cmake/debug/armeabi -GAndroid Gradle - Ninja -DANDROID_ABI=armeabi -DANDROID_NDK=/Applications/android-sdk-canary/ndk-bundle -DCMAKE_LIBRARY_OUTPUT_DIRECTORY=/Users/4brunu/Developer/DjinniCmakeExample/android_project/DjinniCmakeExampleAndroid/app/build/intermediates/cmake/debug/obj/armeabi -DCMAKE_BUILD_TYPE=Debug -DCMAKE_MAKE_PROGRAM=/Applications/android-sdk-canary/cmake/bin/ninja -DCMAKE_TOOLCHAIN_FILE=/Applications/android-sdk-canary/cmake/android.toolchain.cmake -DANDROID_NATIVE_API_LEVEL=14}
-- Android build!
-- Configuring incomplete, errors occurred!
See also "/Users/4brunu/Developer/DjinniCmakeExample/android_project/DjinniCmakeExampleAndroid/app/externalNativeBuild/cmake/debug/armeabi/CMakeFiles/CMakeOutput.log".
CMake Error at deps/djinni/CMakeLists.txt:1 (cmake_minimum_required):
  CMake 3.5.0 or higher is required.  You are running version 3.4.1
Error:executing external native build for cmake /Users/4brunu/Developer/DjinniCmakeExample/CMakeLists.txt
Error while executing '/Applications/android-sdk-canary/cmake/bin/cmake' with arguments {-H/Users/4brunu/Developer/DjinniCmakeExample -B/Users/4brunu/Developer/DjinniCmakeExample/android_project/DjinniCmakeExampleAndroid/app/externalNativeBuild/cmake/release/armeabi -GAndroid Gradle - Ninja -DANDROID_ABI=armeabi -DANDROID_NDK=/Applications/android-sdk-canary/ndk-bundle -DCMAKE_LIBRARY_OUTPUT_DIRECTORY=/Users/4brunu/Developer/DjinniCmakeExample/android_project/DjinniCmakeExampleAndroid/app/build/intermediates/cmake/release/obj/armeabi -DCMAKE_BUILD_TYPE=Release -DCMAKE_MAKE_PROGRAM=/Applications/android-sdk-canary/cmake/bin/ninja -DCMAKE_TOOLCHAIN_FILE=/Applications/android-sdk-canary/cmake/android.toolchain.cmake -DANDROID_NATIVE_API_LEVEL=14}
-- Android build!
-- Configuring incomplete, errors occurred!
See also "/Users/4brunu/Developer/DjinniCmakeExample/android_project/DjinniCmakeExampleAndroid/app/externalNativeBuild/cmake/release/armeabi/CMakeFiles/CMakeOutput.log".
CMake Error at deps/djinni/CMakeLists.txt:1 (cmake_minimum_required):
  CMake 3.5.0 or higher is required.  You are running version 3.4.1
Error:executing external native build for cmake /Users/4brunu/Developer/DjinniCmakeExample/CMakeLists.txt
```

##### Info
The Cmake that comes with Android Studio is the version 3.4.1 and the CMake provided with djinni requires 3.5.0 
