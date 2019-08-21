#!/bin/bash
INCLUDE_PATH="-I$JAVA_HOME/include -I$JAVA_HOME/include/linux"
INCLUDE_PATH="$INCLUDE_PATH -I$JAVA_HOME/../include -I$JAVA_HOME/../include/linux"
mkdir -p target
cd target
gcc -c -std=c11 -m64 -O2 -fPIC -pthread -DNDEBUG $INCLUDE_PATH ../src/main/c/jni_overhead.c
gcc -shared -m64 -z noexecstack -O2 -fPIC -pthread -o libjni_overhead.so *.o
cd ..