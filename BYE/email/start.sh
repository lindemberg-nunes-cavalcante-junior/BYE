#!/bin/sh

postconf -e "myhostname = bye.email"
postconf -e "mydestination = \$myhostname, localhost.\$mydomain, localhost"
postconf -e "inet_interfaces = all"
postconf -e "inet_protocols = all"

/usr/sbin/postfix start-fg
