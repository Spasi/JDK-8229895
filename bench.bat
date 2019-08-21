@ECHO OFF

CALL build-dll.bat
CALL mvn package
"%JAVA_HOME%\bin\java" -Djava.library.path=target -jar target/benchmarks.jar