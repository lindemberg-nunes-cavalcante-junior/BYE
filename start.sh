#!/bin/bash

# Cria a rede bye_net se não existir
docker network inspect bye_net >/dev/null 2>&1 || docker network create bye_net

# Salva o diretório atual
CURDIR=$(pwd)

# Função para subir compose em uma pasta
up_compose() {
  echo "Subindo serviços em $1"
  cd "$1" || exit
  docker compose up --build -d
  cd "$CURDIR" || exit
}

up_compose "Cliente1_Pedro"
up_compose "Cliente2_Lindemberg"
up_compose "Cliente3_Matheus"
up_compose "ISP"

echo "Todos os serviços subiram!"

