#include <jni.h>
#include "bb.h"


extern "C" {
JNIEXPORT jint JNICALL Java_com_example_jnidemo_MainActivity_add(JNIEnv *env,
        jobject obj);

JNIEXPORT jint JNICALL Java_com_example_jnidemo_MainActivity_add(JNIEnv *env,
        jobject obj) {
    return add(1, 1);
}
}
