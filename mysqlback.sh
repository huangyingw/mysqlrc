#!/bin/sh
TARGET="$1"
PASSWD=`cat $HOME/.passwd |grep xspasswd|awk '{print $3}'`
DB=`cat config/xetusone.properties |awk -F'=' '/database.primary.name/{print $2}'`
if [ ! -z "$DB" ];
then
    mysqldump -uroot -p"$PASSWD" -h127.0.0.1 $DB > "$TARGET"
fi
