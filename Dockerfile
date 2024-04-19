FROM node:20

WORKDIR /dummy-app

COPY package*.json ./

RUN npm install

COPY ./index.js .

CMD [ "node", "index.js" ]

EXPOSE 8080