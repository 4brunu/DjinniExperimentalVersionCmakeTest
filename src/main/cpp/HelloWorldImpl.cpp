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
    
    void HelloWorldImpl::hello() {
        
        std::cout << "hello()" << std::endl;
        
    }
    
}