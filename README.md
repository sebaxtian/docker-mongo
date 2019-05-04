# docker-mongo
Configuración de Docker para contener motor de base de datos Mongo

## Build Contenedor
docker build -t sebaxtian/docker-mongo:1.0.0 .

## Run Contenedor
docker run --name docker-mongo --env-file $PWD/.env -v $PWD/data/mongodata:/data/db -p 27017:27017 -d sebaxtian/docker-mongo:1.0.0

## Restart Contenedor
docker restart docker-mongo

## Ver logs de Contenedor
docker logs docker-mongo

## Shell en Contenedor
docker exec -it docker-mongo bash

## Eliminar Contenedor
docker rm docker-mongo

## Eliminar Image de Contenedor
docker image rm sebaxtian/docker-mongo:1.0.0
