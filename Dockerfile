FROM node:10-alpine AS base

COPY package.json package-lock.json ./

RUN npm install

RUN mkdir frontend

RUN mv node_modules frontend

COPY package.json package-lock.json ./frontend/

RUN npm install -g @angular/cli@7.3.6