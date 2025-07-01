#!/bin/bash

# Define um nome de host válido para o Postfix (caso ainda não exista)
echo "bye.br" > /etc/mailname

# Garante que o log existe
touch /var/log/mail.log

# Inicia os serviços
service postfix start
service dovecot start

# Mantém o container ativo
tail -F /var/log/mail.log

