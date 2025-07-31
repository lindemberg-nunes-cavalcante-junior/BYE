#!/bin/bash

# Salva o diretório atual
CURDIR=$(pwd)

# Função para derrubar compose em uma pasta
down_compose() {
  echo "Parando serviços em $1"
  cd "$1" || exit
  docker compose down
  cd "$CURDIR" || exit
}

down_compose "Cliente1_Pedro"
down_compose "Cliente2_Lindembarg"
down_compose "Cliente3_Matheus"
down_compose "ISP"

echo "Todos os serviços foram parados!"

