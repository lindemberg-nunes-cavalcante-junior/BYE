FROM ubuntu:latest

# Instala o BIND9 e ferramentas DNS
RUN apt-get update && \
    apt-get install -y bind9 bind9utils dnsutils && \
    rm -rf /var/lib/apt/lists/*

# Copia os arquivos de configuração
COPY named.conf /etc/bind/
COPY named.conf.local /etc/bind/
COPY named.conf.options /etc/bind/
COPY db.bye.br /etc/bind/
COPY db.cliente1.br /etc/bind/
COPY db.cliente2.br /etc/bind/
COPY db.cliente3.br /etc/bind/

# (Opcional) se quiser logs dentro do container
RUN mkdir -p /var/log/named && chown -R bind:bind /var/log/named

# Expor as portas DNS
EXPOSE 53/udp
EXPOSE 53/tcp

# Comando padrão para iniciar o servidor
CMD ["/usr/sbin/named", "-f", "-c", "/etc/bind/named.conf", "-u", "bind"]
