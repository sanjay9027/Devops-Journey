sudo apt update
sudo apt install docker.io -y

systemctl start docker or service docker start
systemctl status docker or service docker status

git clone https://github.com/sanjay9027/devops-master-class.git
goto project directory

FROM python:alpine3.10
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python ./launch.py


docker build -t sanjay9027/hello-world-python:latest .
docker login
docker push sanjay9027/hello-world-python:latest

docker search sanjay9027/hello-world-python

on ec2 add inbound rule for sg -all traffic to access all ports

docker run -p 80:5000 sanjay9027/hello-world-python:latest

docker run -d -p 8000:5000 sanjay9027/hello-world-python:latest
docker ps
docker run -d -p 5000:5000 sanjay9027/hello-world-python:latest

 docker container stop 4c12
docker container kill d97

 docker stats 427
docker logs -f 427

docker ps or  docker container ls

docker run -d -p 8000:5000 -m 512m --cpu-quota=50000 sanjay9027/hello-world-python:latest

The PIDS column contains the number of processes and kernel threads created by that container. Threads is the term used by Linux kernel. 

docker system df
docker system info
docker system prune -a
