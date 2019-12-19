FROM node:11-slim

RUN mkdir -p /frontend

WORKDIR /frontend

RUN apt-get update && apt-get install -y git

COPY package.json package-lock.json ./

RUN npm ci

RUN npm install -g @angular/cli@8.0.2

EXPOSE 4200 49153 8080
