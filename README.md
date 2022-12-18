# persistent-docker-history
Project showing how to setup persistent shell history in a docker container

- I often use commandline inside docker containers.  
- I don't like to type same commands over and over again.  
- So I use docker-compose volume to keep the history in the project directory instead of docker container.
- I usually populate the history with useful commands and commit them to git so anyone who clones the project can use them.  
- And then I just leave the file alone and use it as personal docker history for the project.

## Try it!

1. Clone this repo `git clone git@github.com:curusarn/persistent-docker-history.git`
1. Run `make docker`
1. Use arrow up to get previous commands or whatever

## Configure persistent history for your existing docker-compose

1. Add `.docker_bash_history:/root/.bash_history` to `volumes` in your `docker-compose.yaml`
1. Run `touch .docker_bash_history` (OR something like `echo 'echo "it works!"' > .docker_bash_history`)
1. Use `docker-compose run ...` as usual

### Prerequisities

- `docker`
- `docker-compose`
- standard stuff (`make`, *other things I can't think of right now*)
