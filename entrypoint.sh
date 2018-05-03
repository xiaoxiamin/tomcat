#!/bin/bash

exec /usr/local/tomcat/bin/catalina.sh run "$@" 2>&1 | /usr/local/sbin/cronolog -k 7 /app/logs$MARATHON_APP_ID-$HOSTNAME-%Y%m%d.log
