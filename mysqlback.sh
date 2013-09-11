#!/bin/sh
TARGET="$1"
PASSWD=`cat $HOME/.passwd |grep xspasswd|awk '{print $3}'`
DB=`cat /opt/xetusbase/tomcat/conf/catalina.properties |grep WEBAPP_DBNAME|awk '{print $3}'`
mysqldump -uroot -p"$PASSWD" -h127.0.0.1 $DB > "$TARGET"
