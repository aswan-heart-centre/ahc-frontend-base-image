FROM node:11-slim

RUN mkdir -p /frontend

WORKDIR /frontend

COPY package.json package-lock.json ./

RUN npm install

RUN npm install -g @angular/cli@7.3.6

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y --no-install-recommends chromium

ENV CHROME_BIN=chromium

EXPOSE 4200 49153
