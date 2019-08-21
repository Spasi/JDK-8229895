#include <jni.h>

#define UNUSED_PARAM(param) \
    (void)(param);

#define UNUSED_PARAMS(a, b) \
    (void)(a); \
    (void)(b);

#ifdef __cplusplus
    extern "C" {
#endif

JNIEXPORT void JNICALL Java_org_lwjgl_jdk8229895_JNIOverhead_func0(JNIEnv *env, jclass clazz) {
    UNUSED_PARAMS(env, clazz)
}
JNIEXPORT void JNICALL JavaCritical_org_lwjgl_jdk8229895_JNIOverhead_func0(void) {
}

JNIEXPORT void JNICALL Java_org_lwjgl_jdk8229895_JNIOverhead_func1(JNIEnv *env, jclass clazz, jint x) {
    UNUSED_PARAMS(env, clazz)
    UNUSED_PARAM(x)
}
JNIEXPORT void JNICALL JavaCritical_org_lwjgl_jdk8229895_JNIOverhead_func1(jint x) {
    UNUSED_PARAM(x)
}

JNIEXPORT void JNICALL Java_org_lwjgl_jdk8229895_JNIOverhead_func2(JNIEnv *env, jclass clazz, jint x, jint y) {
    UNUSED_PARAMS(env, clazz)
    UNUSED_PARAM(x)
    UNUSED_PARAM(y)
}
JNIEXPORT void JNICALL JavaCritical_org_lwjgl_jdk8229895_JNIOverhead_func2(jint x, jint y) {
    UNUSED_PARAM(x)
    UNUSED_PARAM(y)
}

JNIEXPORT void JNICALL Java_org_lwjgl_jdk8229895_JNIOverhead_func3(JNIEnv *env, jclass clazz, jint x, jint y, jint z) {
    UNUSED_PARAMS(env, clazz)
    UNUSED_PARAM(x)
    UNUSED_PARAM(y)
    UNUSED_PARAM(z)
}
JNIEXPORT void JNICALL JavaCritical_org_lwjgl_jdk8229895_JNIOverhead_func3(jint x, jint y, jint z) {
    UNUSED_PARAM(x)
    UNUSED_PARAM(y)
    UNUSED_PARAM(z)
}

JNIEXPORT void JNICALL Java_org_lwjgl_jdk8229895_JNIOverhead_func4(JNIEnv *env, jclass clazz, jint x, jint y, jint z, jint w) {
    UNUSED_PARAMS(env, clazz)
    UNUSED_PARAM(x)
    UNUSED_PARAM(y)
    UNUSED_PARAM(z)
    UNUSED_PARAM(w)
}
JNIEXPORT void JNICALL JavaCritical_org_lwjgl_jdk8229895_JNIOverhead_func4(jint x, jint y, jint z, jint w) {
    UNUSED_PARAM(x)
    UNUSED_PARAM(y)
    UNUSED_PARAM(z)
    UNUSED_PARAM(w)
}

#ifdef __cplusplus
}
#endif
