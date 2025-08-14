#!/bin/bash

docker network inspect isp >/dev/null 2>&1 || docker network create isp
docker network inspect c1 >/dev/null 2>&1 || docker network create c1
docker network inspect c2 >/dev/null 2>&1 || docker network create c2
docker network inspect c3 >/dev/null 2>&1 || docker network create c3

CURDIR=$(pwd)

docker compose up --build -d

echo "Todos os serviços subiram!"