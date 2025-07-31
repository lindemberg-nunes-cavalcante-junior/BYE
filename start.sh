#!/bin/bash

# Cria a rede bye_net se não existir
docker network inspect bye_net >/dev/null 2>&1 || docker network create bye_net
docker network inspect bye_net_1 >/dev/null 2>&1 || docker network create bye_net_1
docker network inspect bye_net_2 >/dev/null 2>&1 || docker network create bye_net_2
docker network inspect bye_net_3 >/dev/null 2>&1 || docker network create bye_net_3

# Salva o diretório atual
CURDIR=$(pwd)

# Função para subir compose em uma pasta
up_compose() {
  echo "Subindo serviços em $1"
  cd "$1" || exit
  docker compose up -d
  cd "$CURDIR" || exit
}

up_compose "Cliente1_Pedro"
up_compose "Cliente2_Lindembarg"
up_compose "Cliente3_Matheus"
up_compose "ISP"

echo "Todos os serviços subiram!"

