

docker: .build-docker .docker_bash_history
	-docker-compose run --service-ports project-cli

.build-docker: Dockerfile src/
	docker-compose build project-cli 
	touch .build-docker

.docker_bash_history:
	touch .docker_bash_history

docker_force_rebuild: _force docker

_force:
	-rm .build-docker

.PHONY: _force all docker_force_rebuild docker
