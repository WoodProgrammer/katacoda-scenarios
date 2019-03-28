A Docker container image is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings. A docker image can be build with a Dockerfile that defines the steps that will run to create the docker image.

## Katas

Search the nginx images with `docker search redis`{{execute}}.

Pull the official nginx image `docker pull redis`{{execute}}.

List the docker images on this machine `docker images`{{execute}}.

Create a Dockerfile with below content.

<pre class="file" data-filename="Dockerfile" data-target="replace">
FROM nginx:alpine
COPY ./index.html /usr/share/nginx/html
</pre>

Build static content image using the build command below.

`docker build -t static-content:1.0.0 .`{{execute}}.

Run the static container on port 80 `docker run -d --name static-content -p 80:80 static-content:1.0.0`{{execute}}.
