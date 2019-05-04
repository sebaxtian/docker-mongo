# 
# FROM mongo:4-xenial
# 
# https://hub.docker.com/_/mongo
# 
# Configuración de Docker para contener motor de base de datos Mongo
#
FROM mongo:4-xenial

# Customize configuration
COPY config/custom.conf /etc/mongo/mongod.conf

# Config User DB
COPY scripts/user-gisdata.sh /docker-entrypoint-initdb.d/user-gisdata.sh

EXPOSE 27017
