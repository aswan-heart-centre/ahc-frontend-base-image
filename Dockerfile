FROM node:11-slim

RUN npm install -g @angular/cli@7.3.6

RUN mkdir /frontend

WORKDIR /frontend

COPY package.json package-lock.json ./

RUN npm install

EXPOSE 4200 49153
