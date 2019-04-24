FROM node:10-alpine AS base

RUN mkdir -p /frontend

WORKDIR /frontend

COPY package.json package-lock.json ./

RUN npm install

RUN npm install -g @angular/cli@7.3.6