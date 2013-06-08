#!/bin/sh
TARGET="$1"
PASSWD=`cat $HOME/mysqlrc/passwd |grep xspasswd|awk '{print $3}'`
DB=`cat /opt/xetusbase/tomcat/conf/catalina.properties |grep WEBAPP_DBNAME|awk '{print $3}'`
mysql -uroot -p"$PASSWD" -h127.0.0.1 $DB < "$TARGET"
