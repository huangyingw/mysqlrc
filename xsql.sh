#!/bin/sh
if [ -z "$1" ];
then
    echo Please provide the specified sql file
    exit 1
fi
TARGET="$1"
user="root"
if [ -f $HOME/.passwd ]; then
    PASSWD=`cat $HOME/.passwd |grep xspasswd|awk '{print $3}'`
else
    PASSWD="1qaz@WSX"
fi
DB=`cat config/xetusone.properties |awk -F'=' '/database.primary.name/{print $2}'`
if [ ! -z "$DB" ];
then
    mysql -u"$user" -p"$PASSWD" -h127.0.0.1 $DB < "$TARGET"
fi
