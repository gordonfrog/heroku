#!/usr/bin/env bash
mvn clean package docker:build -DskipTests
docker images --all
docker run hands-on-spring-packt-docker-image
docker ps
docker exec -it 15c42149677f curl http://localhost:8080/application/health