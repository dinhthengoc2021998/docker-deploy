-- TRINO
CREATE USER trino WITH PASSWORD 'trino_password';
CREATE DATABASE hive_metastore OWNER trino;

-- AIRFLOW
CREATE USER airflow WITH PASSWORD 'airflow';
CREATE DATABASE airflow OWNER airflow;

-- OPENMETADATA
CREATE USER openmetadata_user WITH PASSWORD 'openmetadata_password';
CREATE DATABASE openmetadata_db OWNER openmetadata_user;

-- SUPERSET
CREATE USER superset_user WITH PASSWORD 'superset_password';
CREATE DATABASE superset_db OWNER superset_user;

-- GRANT
GRANT ALL PRIVILEGES ON DATABASE hive_metastore TO trino;
GRANT ALL PRIVILEGES ON DATABASE airflow TO airflow;
GRANT ALL PRIVILEGES ON DATABASE openmetadata_db TO openmetadata_user;
GRANT ALL PRIVILEGES ON DATABASE superset_db TO superset_user;
