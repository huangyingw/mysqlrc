#!/bin/sh
DB=`cat /opt/xetusbase/tomcat/conf/catalina.properties |grep WEBAPP_DBNAME|awk '{print $3}'`
echo $DB
#mysql -uroot -pbl0ss0m -h127.0.0.1 xetusloan_folder_hta

