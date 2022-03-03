https://umami.is/docs/install

```
sudo docker exec -it 51365a4e057c /bin/bash
bash-5.1#wget https://raw.githubusercontent.com/mikecao/umami/master/sql/schema.postgresql.sql
bash-5.1# psql -h 127.0.0.1 -U umami -d umami -f schema.postgresql.sql 

psql
\dt
```
