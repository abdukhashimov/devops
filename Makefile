STACK=test_greatsoft

service-up-swarm:
	docker stack deploy --with-registry-auth -c ./docker-compose.yml -c ./db-docker-compose.yml ${STACK}

services:
	docker stack services ${STACK}

remove-stack:
	docker stack rm ${STACK}
