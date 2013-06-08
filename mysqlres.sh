#!/bin/sh
TARGET="$1"
DB=`cat /opt/xetusbase/tomcat/conf/catalina.properties |grep WEBAPP_DBNAME|awk '{print $3}'`
mysql -uroot -pbl0ss0m -h127.0.0.1 $DB < "$TARGET"
