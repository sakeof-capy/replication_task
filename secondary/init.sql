ALTER SYSTEM SET password_encryption = 'scram-sha-256';

CREATE ROLE ${POSTGRES_SECONDARY_USER} WITH LOGIN PASSWORD '${POSTGRES_SECONDARY_PASSWORD}' REPLICATION;
