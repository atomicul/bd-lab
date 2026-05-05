# Baze de date

Docker image containing the oracle server + data from the [install guide](https://cezarabenegui.com/portal/materiale/3)

## Usage

**Dependencies**: Docker, with the compose extension

1. Set the 'APP_USER_PASSWORD' environment variable \
Example:
You might create the following `.env` file
```
APP_USER=hr
APP_USER_PASSWORD=prostu123
```

2. Run `docker compose up`
> Depending on you docker installation, you may have to use sudo here

3. Connection details are printed on screen once the container gets done booting
up

> **Note:**
> If you don't have an SQL client at hand you can get shell access to the DB
> with docker exec: \
> `docker compose exec oracle bash -c 'sqlplus $APP_USER/$APP_USER_PASSWORD@//localhost:1521/$ORACLE_DATABASE'`
