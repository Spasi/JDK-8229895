@ECHO OFF

SET INCLUDE_PATH=/I"%JAVA_HOME%\include" /I"%JAVA_HOME%\include\win32"
SET INCLUDE_PATH=%INCLUDE_PATH% /I"%JAVA_HOME%\..\include" /I"%JAVA_HOME%\..\include\win32"
IF NOT EXIST target (mkdir target)
cd target
cl /c /EHsc /O2 /GR- /GS- /MT /MP /nologo /DNDEBUG %INCLUDE_PATH% ../src/main/c/jni_overhead.c
cl /LD /WX /nologo /Fe:"jni_overhead.dll" *.obj /link /OPT:REF,ICF /DLL /DEF:..\src\main\resources\jni_overhead.def
cd ..