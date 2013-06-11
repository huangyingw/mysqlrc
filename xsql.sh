#!/bin/sh
if [ -z "$1" ];
then
  echo Please provide the specified sql file
else
  user="root"
  if [ -f $HOME/sqlrc/passwd ]; then
    PASSWD=`cat $HOME/sqlrc/passwd |grep xspasswd|awk '{print $3}'`
  else
    PASSWD="1qaz@WSX"
  fi
  mysql -u"$user" -p"$PASSWD" -h127.0.0.1< "$1"
fi
