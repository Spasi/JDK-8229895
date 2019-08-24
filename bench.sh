#!/bin/bash
if [ -z "$JAVA_HOME" ]
then
    echo "Please set JAVA_HOME to the root of a JDK 8+."
else
    if [ "$(uname)" == "Darwin" ]; then
        bash ./build-dylib.sh
    else
        bash ./build-so.sh
    fi
    ./mvnw package
    $JAVA_HOME/bin/java -Djava.library.path=target $* -jar target/benchmarks.jar
fi