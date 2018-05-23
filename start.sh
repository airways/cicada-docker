#!/bin/sh
echo -- start.sh --------------------
/bin/pwd
/usr/bin/whoami
cd /cicada/
m4 -D"PORT=$PORT" -D"ADMIN_PASS=$ADMIN_PASS" -D"VIEW_PASS=$VIEW_PASS" config.m4 >> config.json
exec node app

