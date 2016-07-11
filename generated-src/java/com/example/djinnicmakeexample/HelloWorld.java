// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from helloworld.djinni

package com.mycompany.djinnicmakeexample;

import java.util.concurrent.atomic.AtomicBoolean;

public abstract class HelloWorld {
    public abstract void hello();

    public static native HelloWorld create();

    private static final class CppProxy extends HelloWorld
    {
        private final long nativeRef;
        private final AtomicBoolean destroyed = new AtomicBoolean(false);

        private CppProxy(long nativeRef)
        {
            if (nativeRef == 0) throw new RuntimeException("nativeRef is zero");
            this.nativeRef = nativeRef;
        }

        private native void nativeDestroy(long nativeRef);
        public void destroy()
        {
            boolean destroyed = this.destroyed.getAndSet(true);
            if (!destroyed) nativeDestroy(this.nativeRef);
        }
        protected void finalize() throws java.lang.Throwable
        {
            destroy();
            super.finalize();
        }

        @Override
        public void hello()
        {
            assert !this.destroyed.get() : "trying to use a destroyed object";
            native_hello(this.nativeRef);
        }
        private native void native_hello(long _nativeRef);
    }
}
