#!/bin/bash
INCLUDE_PATH="-I$JAVA_HOME/include -I$JAVA_HOME/include/darwin"
INCLUDE_PATH="$INCLUDE_PATH -I$JAVA_HOME/../include -I$JAVA_HOME/../include/darwin"
mkdir -p target
cd target
clang -c -std=c11 -m64 -O2 -fPIC -pthread -DNDEBUG $INCLUDE_PATH ../src/main/c/jni_overhead.c
clang -dynamiclib -O2 -fPIC -o libjni_overhead.dylib *.o
cd ..