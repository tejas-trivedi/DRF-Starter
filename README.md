# DRF-Starter
A starter template for building REST APIs in Django REST

</br>

## Features

 - Integration with Django REST Framework
 - User Management APIs
 - JWT Authentication
 - Added Django Debug Toolbar
 - Integration with PostgreSQL and Redis
 - Containerized using Docker and managed using docker compose.

</br>

## Pre-requisites
This project is built on top of docker containers. So ensure that you have Docker and Docker Compose installed on your system. </br>
For installation instructions refer: https://docs.docker.com/get-docker/

</br>

## Starting the Server

1. Start the PostgreSQL and Redis server
```
docker-compose up -d db redis
```

2. Start the complete project
```
docker-compose up
```

</br>

## Running the commands
To run a command inside the docker container:
```
docker-compose run app sh -c "enter_your_command_here"
```
