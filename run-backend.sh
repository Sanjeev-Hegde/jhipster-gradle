#!/bin/sh

# If variable not present use default values
: ${APP_HOME:=/opt/app/src/api/build/libs/}}
: ${JAVA_OPTIONS:=-Xmx512m}

export APP_HOME JAVA_OPTIONS

cd ${APP_HOME}

java $JAVA_OPTIONS -Dspring.profiles.active=${SPRING_PROFILE} -jar corda-api-0.0.1-SNAPSHOT.jar
