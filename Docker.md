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
- `
- 

 
 



