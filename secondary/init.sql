ALTER SYSTEM SET password_encryption = 'scram-sha-256';
CREATE ROLE ${POSTGRES_REPLICATOR_USER} WITH LOGIN PASSWORD '${POSTGRES_REPLICATOR_PASSWORD}' REPLICATION;
