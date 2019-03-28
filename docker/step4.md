Compose is a tool for defining and running multi-container Docker applications on your local environment. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration. 

## Katas

Create a docker-compose file for the sample shopping application with below content.

<pre class="file" data-filename="docker-compose.yml" data-target="replace">
version: "3.2"

services:
  database:
    image: dockersamples/atsea_db
    environment:
      POSTGRES_USER: gordonuser
      POSTGRES_DB: atsea

  appserver:
    image: dockersamples/atsea_app
    environment:
      postgres_password: gordonuser
    ports:
      - "8080:8080"
    depends_on:
      - database
</pre>

Start the sample shopping application by executing following command.

`docker-compose up`{{execute}}.