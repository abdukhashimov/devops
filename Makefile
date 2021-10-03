STACK=test_greatsoft

service-up-swarm:
	docker network create database-and-service
	docker-compose -f docker-compose.yml -f db-docker-compose.yml up -d --build

service-down-swarm:
	docker-compose -f docker-compose.yml -f db-docker-compose.yml down
	docker network rm database-and-service

services:
	docker stack services ${STACK}

remove-stack:
	docker stack rm ${STACK}
