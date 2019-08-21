## JNI Overhead Benchmark

This JMH benchmark attempts to quantify the overhead of JNI method calls, with and without HotSpot's `CriticalJNINatives`.

On the Java side, the JMH methods simply call the native methods, passing a variable number of arguments.
On the native side, the JNI functions do nothing at all.

### Requirements

- JDK 8+ (`JAVA_HOME` must be exported, pointing to the JDK root)
- Maven
- GCC on Linux
- clang on macOS
- MSVC on Windows

### Usage

Linux & macOS:

- `./bench.sh`

Windows, to test x64 binaries:

- _set JAVA_HOME to a x64 JDK_
- `vcvarsall x64`
- `bench.bat`

Windows, to test x86 binaries:

- _set JAVA_HOME to a x86 JDK_
- `vcvarsall amd64_x86`
- `bench.bat`

### Example Results

#### Windows x64, Oracle JDK 1.8.0_222, Ryzen 1800X
```
Benchmark               Mode  Cnt  Score   Error  Units
JNIBenchmark.func0      avgt    3  5,748 ± 0,184  ns/op
JNIBenchmark.func0Crit  avgt    3  5,505 ± 0,315  ns/op
JNIBenchmark.func1      avgt    3  6,075 ± 0,747  ns/op
JNIBenchmark.func1Crit  avgt    3  5,244 ± 0,143  ns/op
JNIBenchmark.func2      avgt    3  6,063 ± 0,268  ns/op
JNIBenchmark.func2Crit  avgt    3  5,487 ± 0,567  ns/op
JNIBenchmark.func3      avgt    3  6,290 ± 0,090  ns/op
JNIBenchmark.func3Crit  avgt    3  5,504 ± 1,040  ns/op
JNIBenchmark.func4      avgt    3  6,048 ± 0,226  ns/op
JNIBenchmark.func4Crit  avgt    3  5,486 ± 0,108  ns/op
```

#### Windows x64, Oracle JDK 12.0.2, Ryzen 1800X
```
Benchmark               Mode  Cnt  Score   Error  Units
JNIBenchmark.func0      avgt    3  8,250 ± 0,219  ns/op
JNIBenchmark.func0Crit  avgt    3  8,096 ± 0,629  ns/op
JNIBenchmark.func1      avgt    3  8,590 ± 0,905  ns/op
JNIBenchmark.func1Crit  avgt    3  7,990 ± 0,892  ns/op
JNIBenchmark.func2      avgt    3  8,559 ± 0,515  ns/op
JNIBenchmark.func2Crit  avgt    3  8,210 ± 0,332  ns/op
JNIBenchmark.func3      avgt    3  8,776 ± 0,289  ns/op
JNIBenchmark.func3Crit  avgt    3  8,475 ± 0,444  ns/op
JNIBenchmark.func4      avgt    3  8,789 ± 0,448  ns/op
JNIBenchmark.func4Crit  avgt    3  8,505 ± 0,412  ns/op
```

_Both crit and non-crit significantly slower than Java 8. Similar results on JDKs 10 to 14._

#### Windows x86, Oracle JDK 1.8.0_221 (-server), Ryzen 1800X
```
Benchmark               Mode  Cnt  Score   Error  Units
JNIBenchmark.func0      avgt    3  5,699 ± 0,174  ns/op
JNIBenchmark.func0Crit  avgt    3  5,267 ± 0,857  ns/op
JNIBenchmark.func1      avgt    3  6,029 ± 0,627  ns/op
JNIBenchmark.func1Crit  avgt    3  5,492 ± 0,516  ns/op
JNIBenchmark.func2      avgt    3  5,779 ± 0,531  ns/op
JNIBenchmark.func2Crit  avgt    3  5,495 ± 0,239  ns/op
JNIBenchmark.func3      avgt    3  6,336 ± 0,513  ns/op
JNIBenchmark.func3Crit  avgt    3  5,751 ± 0,445  ns/op
JNIBenchmark.func4      avgt    3  6,601 ± 0,257  ns/op
JNIBenchmark.func4Crit  avgt    3  6,065 ± 0,142  ns/op
```

#### Windows x86, Zulu JDK 12.0.2 (-server), Ryzen 1800X
```
Benchmark               Mode  Cnt   Score   Error  Units
JNIBenchmark.func0      avgt    3   7,924 ± 0,079  ns/op
JNIBenchmark.func0Crit  avgt    3   7,603 ± 0,308  ns/op
JNIBenchmark.func1      avgt    3   9,216 ± 0,030  ns/op
JNIBenchmark.func1Crit  avgt    3   7,516 ± 0,452  ns/op
JNIBenchmark.func2      avgt    3   9,492 ± 0,082  ns/op
JNIBenchmark.func2Crit  avgt    3   8,071 ± 0,720  ns/op
JNIBenchmark.func3      avgt    3   9,968 ± 1,942  ns/op
JNIBenchmark.func3Crit  avgt    3   8,983 ± 1,313  ns/op
JNIBenchmark.func4      avgt    3  10,677 ± 0,666  ns/op
JNIBenchmark.func4Crit  avgt    3   9,609 ± 0,677  ns/op
```

_Observing slowdown similar to Windows x64._

#### Linux, JDK 1.8.0_222, Ryzen 1800X
```
Benchmark               Mode  Cnt  Score   Error  Units
JNIBenchmark.func0      avgt    3  5.969 ± 1.062  ns/op
JNIBenchmark.func0Crit  avgt    3  5.964 ± 1.976  ns/op
JNIBenchmark.func1      avgt    3  5.612 ± 0.426  ns/op
JNIBenchmark.func1Crit  avgt    3  5.492 ± 2.126  ns/op
JNIBenchmark.func2      avgt    3  6.204 ± 3.315  ns/op
JNIBenchmark.func2Crit  avgt    3  5.848 ± 2.336  ns/op
JNIBenchmark.func3      avgt    3  6.151 ± 3.431  ns/op
JNIBenchmark.func3Crit  avgt    3  6.014 ± 4.374  ns/op
JNIBenchmark.func4      avgt    3  6.628 ± 3.399  ns/op
JNIBenchmark.func4Crit  avgt    3  5.766 ± 0.493  ns/op
```

#### Linux, JDK 12.0.2, Ryzen 1800X
```
Benchmark               Mode  Cnt  Score   Error  Units
JNIBenchmark.func0      avgt    3  8.452 ± 3.189  ns/op
JNIBenchmark.func0Crit  avgt    3  8.116 ± 6.555  ns/op
JNIBenchmark.func1      avgt    3  8.770 ± 4.052  ns/op
JNIBenchmark.func1Crit  avgt    3  8.109 ± 4.388  ns/op
JNIBenchmark.func2      avgt    3  8.524 ± 2.399  ns/op
JNIBenchmark.func2Crit  avgt    3  8.386 ± 1.917  ns/op
JNIBenchmark.func3      avgt    3  8.422 ± 3.730  ns/op
JNIBenchmark.func3Crit  avgt    3  8.449 ± 3.876  ns/op
JNIBenchmark.func4      avgt    3  8.718 ± 4.006  ns/op
JNIBenchmark.func4Crit  avgt    3  8.279 ± 2.288  ns/op
```

_Observing slowdown similar to Windows._

#### macOS, JDK 8, Intel i7-5557U (Broadwell, MacBook Pro 2015)
```
Benchmark               Mode  Cnt   Score   Error  Units
JNIBenchmark.func0      avgt    3  11.296 ± 1.205  ns/op
JNIBenchmark.func0Crit  avgt    3  12.115 ± 0.124  ns/op
JNIBenchmark.func1      avgt    3  11.538 ± 0.251  ns/op
JNIBenchmark.func1Crit  avgt    3  10.943 ± 0.108  ns/op
JNIBenchmark.func2      avgt    3  11.262 ± 0.068  ns/op
JNIBenchmark.func2Crit  avgt    3  13.366 ± 0.227  ns/op
JNIBenchmark.func3      avgt    3  11.246 ± 0.037  ns/op
JNIBenchmark.func3Crit  avgt    3  12.131 ± 0.401  ns/op
JNIBenchmark.func4      avgt    3  11.236 ± 0.047  ns/op
JNIBenchmark.func4Crit  avgt    3  12.398 ± 1.004  ns/op
```

_CriticalJNINatives seems to hurt here._

#### macOS, JDK 11, Intel i7-5557U (Broadwell, MacBook Pro 2015)
```
Benchmark               Mode  Cnt   Score   Error  Units
JNIBenchmark.func0      avgt    3  11.303 ± 0.800  ns/op
JNIBenchmark.func0Crit  avgt    3  11.567 ± 0.861  ns/op
JNIBenchmark.func1      avgt    3  11.536 ± 0.164  ns/op
JNIBenchmark.func1Crit  avgt    3  10.953 ± 0.091  ns/op
JNIBenchmark.func2      avgt    3  12.121 ± 0.147  ns/op
JNIBenchmark.func2Crit  avgt    3  11.665 ± 1.475  ns/op
JNIBenchmark.func3      avgt    3  12.122 ± 0.052  ns/op
JNIBenchmark.func3Crit  avgt    3  11.620 ± 0.827  ns/op
JNIBenchmark.func4      avgt    3  12.208 ± 1.293  ns/op
JNIBenchmark.func4Crit  avgt    3  11.536 ± 0.308  ns/op
```

_No slowdown observed._