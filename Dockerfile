FROM node:14.18.3

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run db:migrate

RUN npm run db:load
