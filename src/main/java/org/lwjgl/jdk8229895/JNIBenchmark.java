package org.lwjgl.jdk8229895;

import org.openjdk.jmh.annotations.*;

import java.util.concurrent.*;

@BenchmarkMode(Mode.AverageTime)
@Warmup(iterations = 2, time = 2)
@Measurement(iterations = 3, time = 2)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Fork(value = 1, jvmArgsPrepend = "-server")
public class JNIBenchmark {

    @Benchmark
    @Fork(jvmArgsAppend = {"-XX:-CriticalJNINatives"})
    public void func0() {
        JNIOverhead.func0();
    }

    @Benchmark
    @Fork(jvmArgsAppend = {"-XX:-CriticalJNINatives"})
    public void func1() {
        JNIOverhead.func1(0);
    }

    @Benchmark
    @Fork(jvmArgsAppend = {"-XX:-CriticalJNINatives"})
    public void func2() {
        JNIOverhead.func2(0, 0);
    }

    @Benchmark
    @Fork(jvmArgsAppend = {"-XX:-CriticalJNINatives"})
    public void func3() {
        JNIOverhead.func3(0, 0, 0);
    }

    @Benchmark
    @Fork(jvmArgsAppend = {"-XX:-CriticalJNINatives"})
    public void func4() {
        JNIOverhead.func4(0, 0, 0, 0);
    }

    @Benchmark
    @Fork(jvmArgsAppend = {"-XX:+CriticalJNINatives"})
    public void func0Crit() {
        JNIOverhead.func0();
    }

    @Benchmark
    @Fork(jvmArgsAppend = {"-XX:+CriticalJNINatives"})
    public void func1Crit() {
        JNIOverhead.func1(0);
    }

    @Benchmark
    @Fork(jvmArgsAppend = {"-XX:+CriticalJNINatives"})
    public void func2Crit() {
        JNIOverhead.func2(0, 0);
    }

    @Benchmark
    @Fork(jvmArgsAppend = {"-XX:+CriticalJNINatives"})
    public void func3Crit() {
        JNIOverhead.func3(0, 0, 0);
    }

    @Benchmark
    @Fork(jvmArgsAppend = {"-XX:+CriticalJNINatives"})
    public void func4Crit() {
        JNIOverhead.func4(0, 0, 0, 0);
    }

}
