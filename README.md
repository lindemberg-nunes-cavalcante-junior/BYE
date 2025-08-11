# Projeto BYE - Infraestrutura Docker para ISP e Clientes

Este projeto simula uma rede de um provedor de internet (ISP) com três clientes (Pedro, Lindembarg e Matheus), utilizando containers Docker para representar cada serviço de rede.

## Estrutura Geral

```
BYE/
├── Cliente1_Pedro/
│   ├── portal/
│   │   └── index.html
│   └── compose.yml
├── Cliente2_Lindembarg/
│   ├── cms/
│   │   ├── wp-content/
│   │   └── ...
│   ├── nginx/
│   │   └── default.conf
│   └── compose.yml
├── Cliente3_Matheus/
│   ├── cms/
│   │   ├── wp-content/
│   │   └── ...
│   ├── nginx/
│   │   └── default.conf
│   └── compose.yml
├── ISP/
│   ├── portal/
│   │   └── index.html
│   ├── dns/
│   │   ├── named.conf
│   │   ├── db.bye
│   │   ├── Dockerfile
│   │   └── entrypoint.sh
│   ├── email/
│   │   └── Dockerfile
│   ├── webmail/
│   │   └── config.inc.php
│   └── compose.yml
├── start.sh
├── stop.sh
└── README.md
```

## Componentes por Cliente

### Cliente 1 - Pedro
- **portal:** HTML simples (`index.html`)
- **compose.yml:** Sobe o serviço de portal

### Cliente 2 - Lindembarg
- **CMS:** WordPress com Nginx, PHP-FPM e MySQL
- **nginx/default.conf:** Configuração personalizada do Nginx
- **compose.yml:** Integra todos os serviços com volumes e variáveis `.env`

### Cliente 3 - Matheus
- **CMS:** WordPress com a mesma estrutura do Cliente 2
- **compose.yml:** Similar ao do Cliente 2

### ISP
- **portal:** Página HTML do ISP
- **dns:** Configuração Bind9 para resolução de nomes, com imagem `sameersbn/bind:latest`  
  **Importante:** O serviço DNS não expõe porta para o host para evitar conflitos com portas já usadas no sistema operacional. O DNS funciona internamente na rede Docker `bye_net`.
- **email:** Servidor SMTP personalizado (imagem própria)
- **webmail:** Interface Roundcube
- **compose.yml:** Orquestra todos os serviços do ISP
- **rede:** Todos os serviços compartilham a rede Docker externa chamada `bye_net`. Caso não exista, deve ser criada manualmente antes de subir os serviços:

```bash
docker network create bye_net
```

## Rede Docker

- A rede `bye_net` foi configurada como externa e compartilhada por todos os containers dos clientes e ISP, para que possam se comunicar internamente.
- Isso evita exposição desnecessária de portas ao host, reduzindo conflitos e melhorando a comunicação interna dos serviços.

## Scripts de Automação

### `start.sh`
- Executa `docker compose up -d` em cada diretório de cliente e no ISP, iniciando todos os containers da rede.

### `stop.sh`
- Executa `docker compose down` nos mesmos diretórios para parar todos os containers.

## Comandos para executar

Subir todos os serviços:

```bash
./start.sh
```

Parar todos os serviços:

```bash
./stop.sh
```

## Observações

- As imagens base usadas nos CMSs são as oficiais do WordPress.
- A imagem do DNS foi alterada para `sameersbn/bind:latest`, pois a imagem antiga `internetsystemsconsortium/bind9:9.16` não está mais disponível no Docker Hub.
- O serviço de DNS não expõe portas para o host para evitar conflito com serviços locais de DNS/mDNS.
- Para testar a resolução DNS entre containers, utilize comandos `dig` ou `nslookup` a partir de outros containers na rede `bye_net`.
- Caso precise expor o DNS no host, é necessário garantir que a porta não esteja em uso pelo sistema operacional, ou usar uma porta alternativa.
- O projeto foi desenvolvido para ser executado em ambiente local de testes e simulação.




