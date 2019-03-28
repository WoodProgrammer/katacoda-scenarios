A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one computing environment to another. 

![Container](docker/assets/container-what-is-container.png)

## Katas

Run an nginx container on port 80 `docker run -d --name nginx -p 80:80 nginx`{{execute}}.

List for containers `docker ps`{{execute}}.

Stop nginx container `docker stop nginx`{{execute}}.

List for all containers `docker ps -a`{{execute}}.

Remove the stopped nginx container `docker rm nginx`{{execute}}.