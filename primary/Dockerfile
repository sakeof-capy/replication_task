FROM postgres:latest

COPY pg_hba.conf /var/lib/postgresql/data/pg_hba.conf
COPY init.sql /docker-entrypoint-initdb.d/init.sql

RUN apt-get update && apt-get install -y gettext-base && \ 
    envsubst < /docker-entrypoint-initdb.d/init.sql > /docker-entrypoint-initdb.d/init.sql

CMD ["postgres", "-c", "hba_file=/var/lib/postgresql/data/pg_hba.conf"]
