# Projeto ASA — Servidor de E-mail com Postfix e Docker

Este projeto implementa um ambiente de rede com múltiplos containers Docker para simular um provedor de serviços com servidor SMTP (Postfix), DNS, proxy e portal web. A entrega faz parte da disciplina de Administração de Sistemas Autônomos.

## 🧱 Estrutura dos containers

- `email` — Servidor SMTP com Postfix e Dovecot
- `dns` — Servidor DNS com BIND9
- `proxy` — Proxy reverso com Apache
- `portal` — Página web de exemplo

Todos os serviços são isolados em containers e configurados para interagir entre si em uma rede Docker personalizada.

## 📬 Testando o servidor SMTP via Telnet

Após subir os containers com:

```bash
docker compose up -d


