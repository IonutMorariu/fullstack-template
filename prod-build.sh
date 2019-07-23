#!/bin/bash
docker build -t USERNAME/fullstack-client ./client
docker build -t USERNAME/fullstack-nginx ./nginx
docker build -t USERNAME/fullstack-server ./server
docker push USERNAME/fullstack-client
docker push USERNAME/fullstack-nginx
docker push USERNAME/fullstack-server