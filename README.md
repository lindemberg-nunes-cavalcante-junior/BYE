# Projeto Final - Administração de Sistemas Abertos (ASA)
Alunos> Matheus Luiz, Pedro, Lindemberg
##  Descrição
Este projeto consiste na **implementação de um Provedor de Serviços de Internet (ISP) usando arquitetura baseada em microsserviços**, empregando ferramentas de **Infraestrutura como Código (IaC)** e práticas **DevOps**.  
O objetivo é oferecer para cada cliente serviços de DNS, e-mail e proxy reverso HTTP com **isolamento, segurança e criptografia**.

---

##  Objetivos do Projeto
- Desenvolver infraestrutura de microsserviços utilizando **Docker**.
- Oferecer:
  - **Serviço de DNS** (Bind9)
  - **Serviço de E-mail** (Postfix + Dovecot)
  - **Proxy reverso HTTP** (Nginx,Apache) com **SSL/TLS** (Let's Encrypt).
- Garantir isolamento e segurança por meio de:
  - Redes isoladas (Docker Network)
  - Políticas de acesso restritivas (firewall, ACLs)
  - Criptografia de dados em trânsito (HTTPS, STARTTLS)
- Documentar e validar a infraestrutura:
  - Testes automatizados
  - Manual de implantação (passo a passo + vídeo)
  - Relatório técnico com métricas


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

##Representação do Projeto:
<img width="894" height="512" alt="image" src="https://github.com/user-attachments/assets/2315293f-d55c-4710-9936-45ebe5f842fa" />


---

##  Tecnologias Utilizadas
- **Docker**
- **Bind9**
- **Postfix**
- **Apache**
- **Nginx**

- **Let's Encrypt**
- **GitHub Actions**
- **Firewall / ACLs**

---

##  Planejamento das Sprints

| Semana | Sprint | Entregas |
|--------|--------|----------|
| 2      | Sprint 1 | Artefatos de gerenciamento + Infraestrutura do Provedor |
| 4      | Sprint 2 | Artefatos de gerenciamento + Infraestrutura do Cliente 1 |
| 6      | Sprint 3 | Artefatos de gerenciamento + Infraestrutura dos Clientes 2 e 3 |
| 8      | Sprint 4 | Documentação final + Apresentação final |

---

## 📦 Estrutura de Entregas

1. **Artefatos de gerenciamento**
   - Cronogramas
   - Tarefas (issues)
   - Atas de reunião
   - Relatórios
2. **Infraestrutura do Provedor**
   - Código versionado
   - Relatório de testes
   - Manual de implantação
3. **Infraestrutura do Cliente 1 Pedro**
4. **Infraestrutura do Cliente 2 Lindemberg**
5. **Infraestrutura do Cliente 3  Matheus**
6. **Apresentação Final**
   - Slides e vídeo de demonstração

---
