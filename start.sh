#!/bin/bash
JAVA_HOME=/usr/local/jdk/jdk1.8.0_131
JRE_HOME=/usr/local/jdk/jdk1.8.0_131/jre
PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
export JAVA_HOME JRE_HOME PATH CLASSPATH
echo Starting application
nohup java  -jar qygp-project.jar  --spring.profiles.active=prod &
echo tail -f nohup
tail -f nohup
