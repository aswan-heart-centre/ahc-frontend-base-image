FROM node:14-slim

RUN mkdir -p /frontend

WORKDIR /frontend

RUN apt-get update && apt-get install -y git python

COPY package.json package-lock.json ./

RUN npm ci

RUN npm install -g @angular/cli@10.1.7

EXPOSE 4200 49153 8080
