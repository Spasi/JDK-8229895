#!/bin/bash
if [ "$(uname)" == "Darwin" ]; then
    bash ./build-dylib.sh
else
    bash ./build-so.sh
fi
./mvnw package
$JAVA_HOME/bin/java -Djava.library.path=target -jar target/benchmarks.jar