# AMA (Ask Me Anything) API

Aplicação em Go que permite a criação e o gerenciamento de salas de bate-papo, onde os usuários podem enviar mensagens e reagir a elas. A API também suporta comunicação em tempo real via WebSocket, permitindo que os clientes se inscrevam para receber atualizações ao vivo das salas.

## Funcionalidades

### 1. **Criação e Gerenciamento de Salas**
   - Crie novas salas de bate-papo com temas específicos.
   - Obtenha uma lista de todas as salas disponíveis.

### 2. **Mensagens em Salas**
   - Envie mensagens para uma sala específica.
   - Obtenha todas as mensagens de uma sala.
   - Reaja a mensagens ou marque-as como respondidas.

### 3. **Assinatura em Tempo Real**
   - Inscreva-se em uma sala para receber notificações em tempo real sobre novas mensagens usando WebSockets.

## Endpoints

- **POST /api/rooms:** Cria uma nova sala.
- **GET /api/rooms:** Obtém uma lista de todas as salas.
- **GET /subscribe/{room_id}:** Inscreve-se para atualizações em tempo real de uma sala específica.
- **POST /api/rooms/{room_id}/messages:** Envia uma nova mensagem para uma sala.
- **GET /api/rooms/{room_id}/messages:** Obtém todas as mensagens de uma sala.
- **GET /api/rooms/{room_id}/messages/{message_id}:** Obtém detalhes de uma mensagem específica.
- **PATCH /api/rooms/{room_id}/messages/{message_id}/react:** Reage a uma mensagem.
- **DELETE /api/rooms/{room_id}/messages/{message_id}/react:** Remove uma reação de uma mensagem.
- **PATCH /api/rooms/{room_id}/messages/{message_id}/answer:** Marca uma mensagem como respondida.

## Tecnologias Utilizadas

- **Golang**
- **PostgreSQL** (via pgx e pgstore)
- **WebSockets** (via Gorilla WebSocket)
- **chi** (router para Go)

## Como Rodar a Aplicação

1. Clone este repositório.
2. Configure o banco de dados PostgreSQL e ajuste as variáveis de ambiente, se necessário.
3. Navegue até o diretório do projeto.
4. Execute `go run cmd/wsrs/main.go` para iniciar a aplicação.
5. Acesse a API através do endereço `http://localhost:8080`.
