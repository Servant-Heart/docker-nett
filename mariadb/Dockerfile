FROM mariadb:latest

# custom cnf turns on bin logs
# not in use at the moment, but could be 
COPY my.cnf /etc/mysql/my.cnf
COPY init.sql /docker-entrypoint-initdb.d/

RUN apt-get update && apt-get install -y mariadb-server
