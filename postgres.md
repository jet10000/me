Postgres

```
pg_dump -h 127.0.0.1 -p 54320 -U postgres -d db_name -O -x > bak.sql

psql -h 127.0.0.1 -p 54320 -U postgres -d db_name < bak.sql

```

https://simplebackups.com/blog/docker-postgres-backup-restore-guide-with-examples/

https://josepostiga.com/how-to-upgrade-postgresql-version-and-transfer-your-old-data-using-docker/

https://www.dbi-services.com/blog/postgresql-12-new-option-exclude-database-for-pg_dumpall/

```
TRUNCATE public.health_labeledtw RESTART IDENTITY CASCADE;
```

# backup all database from docker

```
docker-compose exec {service_name} pg_dumpall -U {postgres_user} > dump.sql

docker-compose ps
docker-compose exec postgres-plv8-pgcrypto pg_dumpall -U postgres > dump.sql
docker-compose exec postgres-plv8-pgcrypto pg_dumpall --exclude-database=db1 --exclude-database=db2 -U postgres > dump.sql
```
