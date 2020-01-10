FROM node:8
MAINTAINER AKSHIT SINGHAL

WORKDIR /usr/src/app

COPY package*.json ./
RUN apt-get update
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "run", "build:prod" ]


