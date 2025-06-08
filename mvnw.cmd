@echo off
set DIR=%~dp0
set JAVA_EXEC=java
set WRAPPER_JAR=%DIR%\.mvn\wrapper\maven-wrapper.jar
"%JAVA_EXEC%" -jar "%WRAPPER_JAR%" %*