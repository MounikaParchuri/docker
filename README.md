1. Docker is a open source software platform that allows developers to build, test, and deploy applications quickly.
2. Containers are something like a virtual machine, it has its operating system.Isolated Environment
3. Docker is a containerisation platform – it is a toolkit that allows you to build, deploy and manage containerised applications.
4. Docker comes with a command line interface (CLI), using which you can do all of the operations that the platform provides

<h4>Install Docker</h4> 

sudo yum install docker -y

***Start Docker service***

sudo service docker start

***Create docker user and add to docker group***

sudo groupadd docker 
sudo usermod -aG docker $USER
newgrp docker

Docker Commands

docker system df
docker system info
docker version
docker start
docker status
docker stop
docker images
docker ps -a

docker build -t nmglabs-tomcat:latest .

docker build --build-arg foo=value -t nmglabs-tomcat:latest .

docker run --rm nmglabs-tomcat:latest

docker run -d --name nmglabs -p 80:8080 nmglabs-tomcat:latest

docker run -v /home/data:/data -d --name nmglabs -p 80:8080 nmglabs-tomcat:latest

docker exec -it nmglabs /bin/bash

docker sudo docker cp index.html nmglabs:/usr/local/tomcat/

docker cp nmglabs:/usr/local/tomcat/index.html /home/data

docker tag nmglabs-tomcat:latest username/nmglabs-tomcat:v1

docker login

sudo docker push username/nmglabs-tomcat:v1

docker logs nmglabs

docker logs nmglabs --follow

docker inspect nmglabs

docker rm nmglabs --force

docker rmi demo-image:latest

docker stats nmglabs



