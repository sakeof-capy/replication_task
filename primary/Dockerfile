FROM postgres:latest

COPY pg_hba.conf /tmp/pg_hba.conf
COPY init.sql /docker-entrypoint-initdb.d/init.sql

ARG POSTGRES_USER
ARG POSTGRES_PASSWORD
ARG POSTGRES_DB
ARG POSTGRES_SECONDARY_USER

RUN apt update                                                                              && \
    apt install -y gettext-base                                                             && \
    envsubst < /tmp/pg_hba.conf > /var/lib/postgresql/data/pg_hba.conf                      && \
    envsubst < /docker-entrypoint-initdb.d/init.sql > /docker-entrypoint-initdb.d/init.sql

CMD ["postgres", "-c", "hba_file=/var/lib/postgresql/data/pg_hba.conf"]
