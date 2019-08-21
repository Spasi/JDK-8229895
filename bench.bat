@ECHO OFF

CALL build-dll.bat
CALL mvnw.cmd package
"%JAVA_HOME%\bin\java" -Djava.library.path=target -jar target/benchmarks.jar