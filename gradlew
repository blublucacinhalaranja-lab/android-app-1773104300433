#!/usr/bin/env bash
##############################################################################
#
# Gradle wrapper script for Unix
#
# Modified from the original Gradle wrapper script.
#
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass options to the JVM.
DEFAULT_JVM_OPTS=""

# Set GRADLE_HOME to the location of your Gradle installation
# GRADLE_HOME="/opt/gradle/gradle-2.3"

##############################################################################
#
# DO NOT EDIT BELOW THIS LINE
#
##############################################################################

APP_BASE_NAME=`basename "$0"`
APP_HOME=`dirname "$0"`

# Use absolute path, it makes more sense.
if [ -z "$APP_HOME" ]; then
  APP_HOME="."
else
  APP_HOME=`cd "$APP_HOME" && pwd`
fi

# Ensure standard output is always used. This is to avoid problems with daemon start stop.
export GRADLE_EXIT_CONSOLE=true

# -----------------------------------------------------------------------------
# Locate java.
# -----------------------------------------------------------------------------

if [ -n "$JAVA_HOME" ]; then
  JAVA="$JAVA_HOME/bin/java"
else
  if [ -x "/usr/bin/java" ]; then
    JAVA="/usr/bin/java"
  else
    echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH."
    echo "       Please set the JAVA_HOME variable in your environment to match the"
    echo "       location of your Java installation."
    exit 1
  fi
fi

# -----------------------------------------------------------------------------
# Execute Gradle.
# -----------------------------------------------------------------------------

# Remove quotes from the arguments
GRADLE_ARGS=("$@")

# Need to double quote the classpath elements in the arguments
CLASSPATH=$(echo "$CLASSPATH" | sed 's/:/":"/g')

exec "$JAVA" ${DEFAULT_JVM_OPTS} ${JAVA_OPTS} ${GRADLE_OPTS} "-Dorg.gradle.appname=$APP_BASE_NAME" "-classpath" "${APP_HOME}/gradle/wrapper/gradle-wrapper.jar${CLASSPATH:+:${CLASSPATH}}" org.gradle.wrapper.GradleWrapperMain "${GRADLE_ARGS[@]}"