# Projeto Final ASA — Sprint 1

**Disciplina:** Administração de Sistemas Abertos  
**Professor:** Sales Filho  
**Equipe:** Matheus Luiz, Lindemberg, Pedro  
**Período da Sprint 1:** Semana 1 a Semana 2  

---

##  Entregas da Sprint 1

-  Artefatos de gerenciamento
-  Infraestrutura do provedor

---

##  Infraestrutura do Provedor

###  Serviços implementados

| Serviço     | Stack/Imagem     | Portas expostas | Descrição |
|-------------|------------------|------------------|-----------|
| **DNS**     | bind9          | 53 TCP/UDP       | Resolução interna da zona bye.br |
| **Proxy**   | Apache (Reverse) | 80/443           | Encaminhamento para os serviços dos clientes |
| **Webmail** | (a definir)      | 443              | Interface de correio eletrônico |
| **E-mail**  | Postfix/Dovecot  | 25, 587, 993     | Envio/recebimento com STARTTLS |

###  Arquivos entregues

- compose.yml: Orquestração com Docker Compose
- Dockerfile: Imagens personalizadas
- named.conf.local: Configuração do Bind9 (zona bye.br)
- proxy-html.conf: Configuração do proxy reverso Apache

---

##  Redes Docker

- isp_network: Rede principal do provedor
- client1_net, client2_net, client3_net: Redes isoladas para os clientes
- DNS local para resolução interna entre serviços

---

##  Planejamento e Metodologia

###  Ferramentas utilizadas

- Docker + Docker Compose
- GitHub para versionamento
- Bind9, Apache, Postfix e Dovecot
- Editor de configuração para arquivos .conf

###  Metodologia

- Baseada no PMBoK + SCRUM
- Kanban com tarefas semanais e rodízio de liderança
- Reuniões semanais com check-in, revisão, planejamento e retrospectiva

---

##  Reunião da Sprint

### **Check-List**
-  O que foi feito: configuração do Docker, rede ISP, proxy reverso e DNS
-  Objetivo da semana: estruturar base funcional para o provedor
-  Bloqueio: ausência de domínio público (resolvido com domínio interno bye.br)

### **Revisão**
- Bind9 respondendo localmente
- Apache configurado como proxy reverso funcional

### **Planejamento próximo**
- Iniciar implantação de serviços do Cliente 1
- Configurar zoneamento específico e serviços HTTP e E-mail

### **Retrospectiva**
-  Pontos positivos: uso do Docker facilitou o isolamento
-  Desafios: integração DNS/proxy


---

##  Progresso da Sprint

| Tarefa                               | Status    |
|--------------------------------------|-----------|
| Definir arquitetura e rede Docker    |  Feito   |
| Configurar serviço DNS com Bind9     |  Feito   |
| Criar e testar proxy reverso Apache  |  Feito   |
| Criar base do docker-compose       |  Feito   |
| Documentar configurações e rede      |  Feito   |
| Preparar próximos passos (Cliente 1) |  Em curso |

---
---

**Última atualização:** Sprint 1 — Semana 2  