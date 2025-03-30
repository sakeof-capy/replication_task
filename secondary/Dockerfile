FROM postgres:latest

COPY pg_hba.conf /etc/postgresql/pg_hba.conf
COPY init.sql /docker-entrypoint-initdb.d/init.sql

# Install gettext-base for envsubst
RUN apt-get update && apt-get install -y gettext-base && \
    envsubst < /docker-entrypoint-initdb.d/init.sql > /docker-entrypoint-initdb.d/init.sql

CMD ["postgres", "-c", "hba_file=/etc/postgresql/pg_hba.conf"]
