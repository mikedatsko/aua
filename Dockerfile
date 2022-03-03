FROM node:16 AS base

ENV DIGITALOCEAN_TOKEN=${DIGITALOCEAN_TOKEN}
RUN mkdir /app
WORKDIR /app
COPY . /app
EXPOSE 80

FROM base as prod
ENV NODE_ENV=production
RUN npm ci
CMD ["npm", "start"]

FROM base as dev
ENV NODE_ENV=development
RUN npm install
CMD ["npm", "run", "dev"]