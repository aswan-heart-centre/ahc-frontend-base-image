FROM node:11

RUN npm install -g @angular/cli@7.3.6

RUN mkdir /frontend

WORKDIR /frontend

COPY package.json package-lock.json ./

RUN npm install
