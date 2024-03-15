FROM node:20.11.1-slim AS base

WORKDIR /usr/app
COPY package.json package-lock.json /usr/app/
RUN npm install
COPY . /usr/app/

FROM base AS development
EXPOSE 8080
CMD npm start
