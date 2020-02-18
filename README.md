# cloud-finance
An open platform to show cloud costs (or to centralize cloud costs if you prefer)

## Requirements
### This project uses docker containers, so use this links to help you get docker installed:
- [Docker](https://docs.docker.com/install/linux/docker-ce/centos/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Instalation
### 1 - Download the repository:
```
$ git clone git@github.com:saulfm08/cloud-finance.git
```

### 2 - Prepare environment variables file (.env)
The database credentials configuration is done through environment variables, for that it is necessary to create a '.env' file with them.
To make it easier, copy the env_template file, edit and change the default values:
```
$ cp .env.template .env

```

### 3 - Execute containers with Docker Compose:
```
$ docker-compose up -d
```
If everything is ok, the following containers will be running (use ```docker-compose ps``` or ```docker ps -a``` to see):

- ```db```: container running mariadb to serve as database;
- ```redis```: container running redis to serve as the cache / in-memory database;
- ```django```: container running python3 (latest) to serve the django web server with gunicorn;
- ```celery```: container running python3 (latest) to serve celery worker (real-time processing);
- ```celery-beat```: container running python3 (latest) to serve celery beat (scheduler);
- ```nginx```: container running nginx:alpine to proxy requests to gunicorn in ```django``` container;


## Accessing:
The web page will be available through http://localhost/
