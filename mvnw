#!/bin/sh
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
JAVA_EXEC="java"
WRAPPER_JAR="$DIR/.mvn/wrapper/maven-wrapper.jar"
exec "$JAVA_EXEC" -jar "$WRAPPER_JAR" "$@"
