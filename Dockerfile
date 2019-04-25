FROM node:11-slim

RUN mkdir -p /frontend

WORKDIR /frontend

COPY package.json package-lock.json ./

RUN npm install

RUN npm install -g @angular/cli@7.3.6

EXPOSE 4200 49153
