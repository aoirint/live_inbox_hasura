# live_inbox_hasura

```shell
sudo docker compose up -d

hasura --project "$PWD/hasura" --envfile "$PWD/.env" console
hasura --project "$PWD/hasura" --envfile "$PWD/.env.production" console
```

```shell
hasura --project "$PWD/hasura" --envfile "$PWD/.env.production" migrate apply --all-databases
hasura --project "$PWD/hasura" --envfile "$PWD/.env.production" metadata apply
```
