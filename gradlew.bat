@REM
@REM Gradle wrapper script for Windows
@REM
@REM Modified from the original Gradle wrapper script.
@REM
@echo off

setlocal

@REM Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass options to the JVM.
set DEFAULT_JVM_OPTS=

@REM Set GRADLE_HOME to the location of your Gradle installation
@REM set GRADLE_HOME=C:\gradle

if "%DEBUG%" == "" goto endDebug
@echo off
@echo.
@echo Environment Variables
@echo.
@set
@echo.
@echo Command Line Arguments
@echo.
@echo %*
@echo.
:endDebug

if "%GRADLE_HOME%" == "" goto findGradleHome

@REM Use the explicit GRADLE_HOME

goto init

:findGradleHome
@REM Try to find GRADLE_HOME from the environment

for %%i in ("%GRADLE_HOME%") do set GRADLE_HOME=%%~fi
if "%GRADLE_HOME%" == "" goto findGradleHomeFailed
goto init

:findGradleHomeFailed
@REM Properly quote the error message for powershell output

echo.
echo ERROR: GRADLE_HOME is not set and no Gradle installation could be found.
echo.
echo Please set GRADLE_HOME to point to a valid Gradle installation.
echo.
goto fail

:init
@REM Set variable to avoid infinite recursion in case GRADLE_HOME was set to current folder
set WRAPPER_LAUNCHED=TRUE

@REM Construct the classpath

set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

@REM Execute Gradle

if "%JAVA_HOME%" == "" goto findJavaHome

@REM Use explicit java.exe found in JAVA_HOME

"%JAVA_HOME%\bin\java" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% "-Dorg.gradle.appname=%APP_BASE_NAME%" "-classpath" "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*
goto end

:findJavaHome
@REM Try to find java.exe in current PATH

for %%i in (java.exe) do set JAVA_EXE=%%~$PATH:i
if defined JAVA_EXE goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
echo.

goto fail

:execute
@REM Execute java.exe

"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% "-Dorg.gradle.appname=%APP_BASE_NAME%" "-classpath" "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*
goto end

:fail
rem Set variable to return script execution failure.
set EXIT_CODE=1

:end
exit /b %EXIT_CODE%

:endLocal
endlocal