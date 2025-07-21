#  Projeto Final ASA — Sprint 2

**Disciplina:** Administração de Sistemas Abertos  
**Professor:** Sales Filho  
**Equipe:** Matheus Luiz, Lindemberg, Pedro  
**Período da Sprint 2:** Semana 3 a Semana 4  

---

##  Cronograma de Reuniões

| Data       | Líder       | Assunto principal                              |
|------------|-------------|-------------------------------------------------|
| 10/07/2025 | Pedro       | Divisão de tarefas (hotsite, sign e proxy)     |
| 19/07/2025 | Matheus Luiz| Testes finais e documentação dos serviços       |

---

##  Entregas da Sprint 2

-  Artefatos de gerenciamento (issues, atas e divisão de tarefas)
-  Infraestrutura do **Cliente 1**:
  - Hotsite (HTML estático)
  - Portal (container com Dockerfile)
  - Serviço Sign (app e API com imagens do professor)
  - Proxy reverso com rotas segmentadas

---

##  Serviços Implementados

| Serviço     | Imagem                         | Porta(s)       | Descrição                                     |
|-------------|--------------------------------|----------------|-----------------------------------------------|
| `hotsite`   | `nginx:alpine`                 | interno        | Página HTML institucional do Cliente 1        |
| `portal`    | Customizada (com Dockerfile)   | interno        | Sistema de apresentação básico (portal)       |
| `sign-app`  | `salesfilho/sign-app`          | 80 (via proxy) | Frontend de autenticação                      |
| `sign-api`  | `salesfilho/sign-api`          | 3000           | Backend da aplicação de login/autenticação    |
| `proxy`     | `nginx:alpine`                 | 80             | Roteamento para `/hotsite`, `/sign`, `/portal`, `/sign/api` |

---

##  Arquivos Entregues

- `compose.yml`: orquestração completa dos serviços do Cliente 1  
- `nginx`: configuração do proxy reverso  
- `hotsite/index.html`: conteúdo institucional  
- `Dockerfile` do portal  
- `README.md`: este documento  
- ** Vídeo** entregue via Google Sala de Aula

---

##  Redes Docker

- `bye`: rede isolada para os serviços do Cliente 1  
- Comunicação direta entre containers protegida e roteada via proxy

---

##  Ferramentas e Metodologia

- **Ferramentas:** Docker, Docker Compose, GitHub, Nginx,apache,html, VSCode  
- **Metodologia:** PMBoK + SCRUM  
  - Tarefas organizadas em Kanban  
  - Reuniões semanais com rodízio de liderança  
  - Entregas por sprint e documentação colaborativa

---

##  Check-in da Sprint

- ** Feito:** Containers do hotsite, portal, sign-app e sign-api  
- ** Objetivo:** Publicar todos os serviços via proxy reverso  
- ** Bloqueio resolvido:** Comunicação entre sign-app e sign-api (` rota `/sign/api`)

---

  Revisão Técnica

-  Acesso ao Sign App funcional via `/sign/`  
-  API do Sign responde corretamente em `/sign/api/`  
-  Hotsite e Portal acessíveis via rotas definidas  
-  Proxy operando com Nginx

---



##  Retrospectiva

-  **Pontos positivos:**  
  - Imagens `salesfilho/sign-*` funcionaram   
  - Estrutura clara no compose entre backend e frontend

-  **Desafios enfrentados:**  
  - Comunicação API ↔ App exigiu ajuste de variáveis de ambiente e rotas
  - Testes locais exigiram sincronização das dependências (ex: proxy → API)
  ---

   ## problema Não resolvido
- A conexão está apto para rodar 200, porém não consegue acessar o html do api dando erro 404
---

##  Progresso da Sprint

| Tarefa                                 | Status   |
|----------------------------------------|----------|
| Criar página HTML do Hotsite           |  Feito  |
| Criar imagem e o redirecionamento do Portal                  |  Feito  |
| Subir containers sign-app e sign-api   |  Feito  |
| Criar e configurar proxy reverso       |  Feito  |
| Testar e documentar os serviços        |  Feito  |
| Configurar HTTPS                       |  feito |

---

##  Relatório de Entregas

| Entrega concluída                     | Entrega parcial             |
|--------------------------------------|-----------------------------|
|                                      |  Funcionamento da api       |
| Hotsite e Portal operacionais        |                             |
| Proxy com rotas funcionais           |                             |
| Documentação escrita e vídeo enviado |                             |
| SSL com Let’s Encrypt                |
---

##  Observações Finais

- O vídeo de demonstração da sprint foi enviado via **Google Sala de Aula**.
- O repositório com os arquivos está disponível no GitHub do grupo.

---
##  Planejamento para Sprint 3

- [ ] Iniciar os serviços dos Clientes 2 e 3  
- [ ] Implementar HTTPS com Let’s Encrypt  
- [ ] Realizar testes automatizados e coleta de métricas

---
