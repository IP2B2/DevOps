#!/bin/bash

docker-compose down --volumes
docker-compose up -d --build
docker-compose up -d

