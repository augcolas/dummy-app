# run this via the following command
# docker build -t tp2 .
# docker run -it -p 8080:8080 tp2

## stage build
FROM node:20 as build

WORKDIR /dummy-app

COPY package*.json ./

RUN npm install

COPY . .

## stage development
FROM build as development

EXPOSE 8080

CMD ["npm", "run", "develop"]

## stage production
FROM build as production

EXPOSE 8081

CMD ["npm", "run", "start"]
