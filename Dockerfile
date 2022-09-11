FROM node:16-slim

RUN mkdir -p /frontend

WORKDIR /frontend

RUN apt-get update && apt-get install -y git python

COPY package.json package-lock.json ./

RUN npm ci

RUN npm install -g @angular/cli@12.1.3

EXPOSE 4200 49153 8080
