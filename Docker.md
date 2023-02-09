# Docker Commands
---

- `which docker` To check Docker is installed
- `docker -v or docker --version` To check the version of docker
- `service docker start` 
- `service docker status`
- `docker info` This command displays system wide information regarding the Docker installation. Information displayed includes the kernel version, number of containers and images.
- `docker images` To see all Images details
- `docker ps` To list all the running containers
- `docker ps -a` To list all containers (Running + Stopped)
- `docker run [OPTIONS] IMAGE [COMMAND] [ARG...]` Docker run is used to create a container and start it immediately. [Documentation](https://docs.docker.com/engine/reference/commandline/run/)

  - `docker run -it ubuntu /bin/bash`
  - `docker run -it --name container1 ubuntu /bin/bash `
  - `docker run --env MYSQL_ROOT_PASSWORD=my-secret-pw --detach mysql`
  - 

- Note :
  - `In -ti, t denotes a "terminal" and i denotes "interactive" to keep STDIN  (standard input) open even if not attached.`
  - `With the --nameflag, you customize its local name and also map the host port to the container port. -d or --detach helps in running the container in the background in detached mode.`


- `docker search jenkins ` Search Docker Hub for images
- `docker pull jenkins/jenkins ` Pulls a specific image from the Docker Hub
- `docker stop container-name-or-id` To stop containers that are already running
- `docker start container-name-or-id` To start containers that have been stopped
- `docker restart container-name-or-id` To restart the stopped container
- `docker kill container-name-or-id` To stop the container immediately by killing its execution
- `docker exec [OPTIONS] CONTAINER COMMAND [ARG...] ` Execute a command in a running container
  - `docker run --name mycontainer -d -it alpine /bin/sh ` This creates and starts a container named mycontainer from an alpine image with an sh shell as its main process

- `docker login` To log into your docker hub
- `docker rename old_container_name new_container_name` To rename a container
- `docker pause container_name ` you can suspend all processes in a specified container
- `docker build ` is used to build image from modified Dockerfile
  ```
  $ vi Dockerfile
  FROM ubuntu
  RUN apt-get update
  RUN apt-get install apache2
  ```
  `docker build -t apache-server-image ` This will build a new image named "apache-server-image" , here -t refers Tag
  
 - `docker commit [CONTAINER_ID] [new_image_name] `To create or save an image of the edited container on the local system
 - `docker tag <my-image> registry.digitalocean.com/<my-registry>/<my-image> ` To ag your image with the fully qualified destination path
 - `docker push registry.digitalocean.com/<my-registry>/<my-image>` command to upload your image to docker hub registery
 - `docker logs container_name_or_id ` To fetch logs for any container
 - `docker inspect image_name or container_name ` The docker inspect command is used to reveal low-level information about both containers and images
 - `docker history `
 
 



