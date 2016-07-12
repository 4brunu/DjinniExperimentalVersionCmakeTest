//
//  HelloWorldImpl.cpp
//  DjinniCmakeExampleiOS
//
//  Created by Bruno Coelho on 12/07/16.
//  Copyright © 2016 Example. All rights reserved.
//

#include "HelloWorldImpl.hpp"
#include <iostream>

namespace djinnicmakeexample {
    
    std::shared_ptr<HelloWorld> HelloWorld::create() {
        
        return std::make_shared<HelloWorldImpl>();
        
    }
    
    HelloWorldImpl::HelloWorldImpl() {
        
        std::cout << "HelloWorldImpl constructor" << std::endl;

    }
    
    std::string HelloWorldImpl::getHelloString() {
                
        return "hello! It Works!";
        
    }
    
}