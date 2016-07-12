//
//  HelloWorldImpl.hpp
//  DjinniCmakeExampleiOS
//
//  Created by Bruno Coelho on 12/07/16.
//  Copyright © 2016 Example. All rights reserved.
//

#include "HelloWorld.hpp"

namespace djinnicmakeexample{
    
    class HelloWorldImpl : public HelloWorld {
    
        public:
        
        HelloWorldImpl();
        
        std::string getHelloString();
                
        private:
        
    };
    
}
