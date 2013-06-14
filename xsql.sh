#!/bin/sh
if [ -z "$1" ];
then
  echo Please provide the specified sql file
  exit 1
fi
TARGET="$1"
user="root"
if [ -f $HOME/sqlrc/passwd ]; then
  PASSWD=`cat $HOME/sqlrc/passwd |grep xspasswd|awk '{print $3}'`
else
  PASSWD="1qaz@WSX"
fi
DB=`cat /opt/xetusbase/tomcat/conf/catalina.properties |grep WEBAPP_DBNAME|awk '{print $3}'`
mysql -u"$user" -p"$PASSWD" -h127.0.0.1 $DB < "$TARGET"
