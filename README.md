# Agoston Postgres image

A wrapper of the official Postgres image to include Python3 and requests module.

## Run/test images

```bash
docker rm some-postgres-custom
docker run --name some-postgres-custom -e POSTGRES_PASSWORD=mysecretpassword -d b86f2d780e6e -c cron.database_name='postgres' -c shared_preload_libraries='pg_cron'
```

## Connection

```bash
docker exec -u root -it some-postgres-custom bash
docker exec -u postgres -it some-postgres-custom psql
```

## Examples

```sql
CREATE EXTENSION plpython3u;

CREATE OR REPLACE FUNCTION url_quote (url text)
RETURNS TEXT
AS $$
  import requests

  resp = requests.get('http://www.mywebsite.com/user')
  return resp;
$$
LANGUAGE 'plpython3u';

select url_quote('https://google.com');
```
