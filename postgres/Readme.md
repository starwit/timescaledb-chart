# PostgreSQL Helm Chart
Deploying a single node PostgreSQL instance - no more, no less.

## Usage
Assuming you have a Kubernetes cluster configured, installation can then be done with the following command:

```bash
helm -n yournamespace install timescale oci://registry-1.docker.io/starwitorg/postgres -f yourvalues.yaml
```

As usually you can adapt installation using customized values. Following snippet shows an example: 
```yaml

postgresql:
  username: postgres # name of super user, postgres is default
  password: mysecretpassword # password for super user

init:
  enabled: true
  init_user_db: |
    -- Create schemata and users
    CREATE EXTENSION IF NOT EXISTS timescaledb;
    CREATE USER myappdb WITH PASSWORD 'password';    
    CREATE DATABASE "myappdb" owner myappdb;

  init_tables: |  
    \connect myappdb
    CREATE TABLE IF NOT EXISTS metrics (
      time TIMESTAMPTZ NOT NULL,
      value DOUBLE PRECISION NULL
    );

persistence:
  enabled: true
  size: 20Gi # request storage space from Kubernetes here
  storageClass: ""
```

Most noteworthy is the init field, which allows you, to run SQL scripts on first data base start. This way you can create schemata, user, sequences, etc. In this example, a custom database and a non-privileged user is created. Second script can be used, to create database structures.

__Note:__ Database initialization is deactivated by default.