FROM node:24-slim

RUN mkdir -p /frontend

WORKDIR /frontend

RUN apt-get update && apt-get install -y \
    git \
    python \
    libgtk2.0-0 \
    libgtk-3-0 \
    libgbm-dev \
    libnotify-dev \
    libnss3 libxss1 \
    libasound2 \
    libxtst6 \
    xauth \
    xvfb

COPY package.json package-lock.json ./

RUN npm ci
