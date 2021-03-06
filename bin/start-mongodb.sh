#!/bin/bash
DK_HOME=$(pwd)
CONFDIR="${DK_HOME}/../conf"
LOG_HOME="${DK_HOME}/../logs"
CLASSPATH="${DK_HOME}/../lib/*:${CONFDIR}"
MAINCLASS="com.dubboclub.dk.server.Main"

if [ "$JAVA_HOME" !="" ]; then
	
	JAVA="$JAVA_HOME/bin/java"
else
	JAVA=java
fi

DUBBO_PROPERTIES="dubbo-mongodb.properties"

"$JAVA" "-Dmonitor.log.home=${LOG_HOME}" "-Ddubbo.properties.file=${DUBBO_PROPERTIES}" -cp $CLASSPATH "${MAINCLASS}" start
