FROM node:16

WORKDIR /app

COPY package.json .
COPY package-lock.json .
COPY nuxt.config.js /app/nuxt.config.js

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "dev"]
