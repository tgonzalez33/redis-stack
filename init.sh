#!/bin/sh

# Générer le fichier ACL
echo "user default off 
user ${REDIS_USER} on >${REDIS_PASSWORD} ~* +@all" > /usr/local/etc/redis/users.acl