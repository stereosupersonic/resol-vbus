FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY . .

WORKDIR /usr/src/app/examples/json-live-data-server
RUN npm install
COPY . .

EXPOSE 3333

CMD ["node", "index.js"]
