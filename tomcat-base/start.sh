#!/usr/bin/env bash
cp /usr/apps/*.war /opt/tomcat/webapps
exec /usr/sbin/init
