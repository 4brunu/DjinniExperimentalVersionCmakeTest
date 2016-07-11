#! /usr/bin/env bash

base_dir=$(cd "`dirname "0"`" && pwd)
cpp_out="$base_dir/generated-src/cpp"
jni_out="$base_dir/generated-src/jni"
objc_out="$base_dir/generated-src/objc"
java_out="$base_dir/generated-src/java/com/example/djinnicmakeexample"
java_package="com.mycompany.djinnicmakeexample"
namespace="djinnicmakeexample"
objc_prefix="DC"
djinni_file="djinni/helloworld.djinni"

deps/djinni/src/run \
   --java-out $java_out \
   --java-package $java_package \
   --ident-java-field mFooBar \
   \
   --cpp-out $cpp_out \
   --cpp-namespace $namespace \
   \
   --cpp-optional-template "std::experimental::optional" \
   --cpp-optional-header "<experimental/optional>" \
   \
   --jni-out $jni_out \
   --ident-jni-class NativeFooBar \
   --ident-jni-file NativeFooBar \
   \
   --objc-out $objc_out \
   --objc-type-prefix $objc_prefix \
   \
   --objcpp-out $objc_out \
   \
   --idl $djinni_file
