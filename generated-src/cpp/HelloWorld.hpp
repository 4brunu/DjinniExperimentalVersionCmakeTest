// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from helloworld.djinni

#pragma once

#include <memory>
#include <string>

namespace djinnicmakeexample {

class HelloWorld {
public:
    virtual ~HelloWorld() {}

    static std::shared_ptr<HelloWorld> create();

    virtual std::string getHelloString() = 0;
};

}  // namespace djinnicmakeexample
