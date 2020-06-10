#!/bin/sh

cd /var/www/html

rcon_password=$(dd if=/dev/urandom bs=20 count=1 | base64 )

sed -i "s/{RCON-PASSWORD}/${rcon_password}/g" /quakejs/base/baseq3/server.cfg
sed -i "s/{RCON-PASSWORD}/${rcon_password}/g" /quakejs/base/cpma/server.cfg

sed -i "s/{SV-HOSTNAME}/${SERVER}/g" index.html

sed -i "s/${SERVER}:80/${SERVER}:${HTTP_PORT}/g" index.html

/etc/init.d/apache2 start

cd /quakejs

node build/ioq3ded.js +set fs_game baseq3 set dedicated 1 +exec server.cfg
