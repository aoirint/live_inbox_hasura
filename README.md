# live_inbox_hasura

## Development

```shell
sudo docker compose up -d

hasura --project "$PWD/hasura" --envfile "$PWD/.env" console
hasura --project "$PWD/hasura" --envfile "$PWD/.env.production" console
```

## Apply migrations for production

```shell
hasura --project "$PWD/hasura" --envfile "$PWD/.env.production" migrate apply --all-databases
hasura --project "$PWD/hasura" --envfile "$PWD/.env.production" metadata apply
```

## Backup & Restore

For Docker Desktop, remove `sudo`.

```shell
mkdir backups

DUMP_SQL=$(sudo docker compose exec postgres pg_dump -U postgres --schema public --no-owner --no-acl --data-only --disable-triggers) && echo "$DUMP_SQL" > backups/dump_$(date -u "+%Y-%m-%d_%H-%M-%S.%3N")Z.sql

cat backups/dump_2023-01-01_00-00-00.000Z.sql | sudo docker compose exec -T postgres psql -U postgres --single-transaction
```
