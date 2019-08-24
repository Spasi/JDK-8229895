@ECHO OFF

IF "%JAVA_HOME%"=="" GOTO INVALID_STATE
IF "%VSCMD_VER%"=="" GOTO INVALID_STATE
GOTO BENCH

:INVALID_STATE
echo Please run vcvarsall and set JAVA_HOME to the root of a JDK 8+.
EXIT /b 1

:BENCH
CALL build-dll.bat
CALL mvnw.cmd package
"%JAVA_HOME%\bin\java" -Djava.library.path=target %* -jar target/benchmarks.jar