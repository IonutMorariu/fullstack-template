# Docker full stack template
This fullstack template is intended to get you going with a GraphQL api (built on top on NodeJS with Express and Apollo server) and a React App (Build using create-react-app)

The code for both server and client was grabbed from [@the-road-to-graphql](https://github.com/the-road-to-graphql).

 - Server application: [Node.js with Express + MongoDB](https://github.com/the-road-to-graphql/fullstack-apollo-express-mongodb-boilerplate)
 - Client application: [React Client](https://github.com/the-road-to-graphql/fullstack-apollo-react-boilerplate)

To get started you first need to have both [docker](https://docs.docker.com/install/) and [docker-compose](https://docs.docker.com/compose/install/) installed on your machine.
There are two docker-compose files:

 1. dev-docker-compose.yml is intended for development use as it has code watching and refreshing for both the server and the client code
 2. prod-docker-compose.yml is intended for "production" use as it builds the react app using the react-scripts build command included with cra and compile es6 modules to commonJS modules using babel.

## How to get started

**1. Run the development server**
To start up the development server just run the command

    docker-compose -d -f dev-docker-compose.yml up --build
This will get open up http://localhost:3050 where the react app will be running

**2.Run the "production" server**
To run the production server on both your machine or any linux machine (e.g digitalocean droplet) you will have to follow this few steps:

   On your machine you need to run the prod-build.sh command replacing USERNAME with your dockerhub username and making sure you are logged:

    docker login
    sh prod-build.sh

On the machine that you're going to deploy pull just the prod-docker-compose.yml and replace "USERNAME" with your dockerhub username and the run

    docker-compose -d -f prod-docker-compose.yml up --build

This will open the "production ready" server on port 3050
Note: You will need to either user nginx to reverse-proxy your domain/subdomain to port 3050 or replace 3050 with port 80 in the docker-compose file.

## Attention!
This are my first steps into docker/docker-compose land as I'm learning my ways into containerized web development. Therefore there will be a lot of mistakes and wrongdoings, if you find and mistake please let me know or submit a PR and I will be more than happy to include it.

## TODO/Missing

 1. Add ssl support with let's encrypt
 2. Add testing/CI support
 3. Add typescript support
 4. Anything that I've forgot to add and will remember in the future
