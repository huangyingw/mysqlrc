#!/bin/sh
HOST="$1"
TARGET="$2"
mysql -ucondor -ptemp123 -h"$HOST" recdeveloper < "$TARGET"
