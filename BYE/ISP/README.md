# Projeto BYE (Build Your Environment) - Ambiente de Serviços em Docker

## 🧠 Objetivo

Este projeto simula um ambiente de rede corporativo básico, com serviços essenciais como:

- Servidor de e-mail (SMTP/Postfix)
- Cliente Webmail (simulado com Nginx)
- Servidor DNS interno (BIND9)
- Portal de entrada da rede (Nginx)
- Proxy ISP (Squid)

O projeto é totalmente baseado em containers Docker, permitindo testes, simulações e estudo de redes e serviços em um ambiente isolado e controlado.

---

## 🧱 Estrutura de Serviços

### 1. `email/` (Servidor SMTP)

- Baseado no Alpine Linux com Postfix.
- Funciona como servidor de e-mail da rede BYE.
- Aceita conexões na porta 25 (SMTP).
- É possível simular o envio de e-mails com ferramentas como `telnet`.

### 2. `webmail/` (Cliente Webmail simulado)

- Um servidor web Nginx servindo uma página HTML estática.
- Representa o cliente webmail que acessaria o servidor SMTP.
- Não envia e-mails de verdade, mas mostra o front-end para visualização.

### 3. `dns/` (Servidor DNS interno)

- Baseado em Ubuntu com o serviço BIND9.
- Resolve nomes como `webmail.asa.local`, `email.asa.local`, `portal.asa.local`.
- Substitui a necessidade de editar arquivos `hosts` no host.
- Responde na porta 53 (TCP/UDP).

### 4. `portal/` (Página institucional)

- Um Nginx simples servindo uma página de boas-vindas.
- Simula o acesso à página oficial da rede (como se fosse um portal de autenticação ou apresentação da rede).
- Acessível na porta 8081.

### 5. `proxy_ISP/` (Proxy de saída)

- Um container com o Squid instalado.
- Atua como intermediário entre a rede interna e a internet.
- Controla e registra o tráfego HTTP.
- Útil para testes de filtragem e roteamento de saída.

---

## 🔁 Comunicação Entre os Serviços

Todos os serviços estão conectados à rede `bye_net`, permitindo que eles se comuniquem entre si usando nomes internos ou resolvidos pelo container `dns`.

Exemplo:
- O `webmail` acessa o serviço de `email` internamente pelo nome `bye-email`
- O `dig @bye-dns webmail.asa.local` resolve corretamente usando o BIND

---

## ▶️ Como Executar

Dentro da pasta raiz do projeto:

```bash
docker compose up --build
