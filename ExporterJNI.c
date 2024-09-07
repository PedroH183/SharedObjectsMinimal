#include <jni.h>        // JNI header provided by JDK
#include <stdio.h>      // C Standard IO Header
#include "FunctionsJNI.h"

// Implementation of the native method sayHello()
JNIEXPORT int JNICALL Java_FunctionsJNI_MULT(JNIEnv *env, jobject thisObj, jint start, jint end) {
   int len = end - start;

   if(len <= 0){
      return -1;
   }

   int multi = 1;
   for(int i = start; (i + start) < end; ++i){
      multi *= (i + start);
   }

   return multi;
}
