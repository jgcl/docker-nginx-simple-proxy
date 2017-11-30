#!/bin/sh

mv /app/default.conf /etc/nginx/conf.d/default.conf

sed -i "s/serverproxy/${serverproxy}/" /etc/nginx/conf.d/default.conf

cat /etc/nginx/conf.d/default.conf

/usr/sbin/nginx -g 'daemon off;'