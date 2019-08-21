package org.lwjgl.jdk8229895;

public class JNIOverhead {

    static {
        System.loadLibrary("jni_overhead");
    }

    private JNIOverhead() {
    }

    public static native void func0();
    public static native void func1(int x);
    public static native void func2(int x, int y);
    public static native void func3(int x, int y, int z);
    public static native void func4(int x, int y, int z, int w);

}
