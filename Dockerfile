# PLAIN VANILLA JS APPLICATION
FROM node:20-alpine

WORKDIR /app

COPY . .

CMD node app.js


# REACT JS APPLICATION

FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5173

CMD npm run dev





