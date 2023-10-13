FROM node:20.5.0 as builder
WORKDIR /app
COPY package* yarn.lock ./
RUN npm install
COPY public ./public
COPY src ./src
ENV NODE_OPTIONS=--openssl-legacy-provider
RUN npm run build

FROM nginx:alpine
COPY --from=builder /app/build /usr/share/nginx/html
