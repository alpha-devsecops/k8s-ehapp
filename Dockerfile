FROM node:22.2-slim

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn install --production --frozen-lockfile

COPY . .

EXPOSE 4000

USER ehapp

CMD ["yarn", "run", "start"]