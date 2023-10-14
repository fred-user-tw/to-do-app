FROM node:20.5.0
RUN mkdir -p /usr/to-do-app
WORKDIR /usr/to-do-app
COPY package.json .
RUN npm install
COPY ./public ./public
COPY ./src ./src

ENV NODE_OPTIONS=--openssl-legacy-provider
CMD ["npm", "start"]