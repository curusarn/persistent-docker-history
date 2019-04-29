# persistent-docker-history
Project showing how to setup persistent shell history in a docker container

- I often use commandline inside docker containers.  
- I don't like to type same commands over and over again.  
- So I use docker-compose volume to keep the history in the project directory instead of docker container.
- I usually populate the history with useful commands and commit them to git so anyone who clones the project can use them.  
- And then I just leave the file alone and use it as personal docker history for the project.
