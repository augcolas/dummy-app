# run this via the following command
# docker build -t tp2 .
# docker run -it -p 8080:8080 tp2

## stage build
FROM node:20 as build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY tsconfig.json ./
COPY index.ts ./
RUN npm run build

## stage development
FROM build as development
CMD ["npm", "run", "develop"]

## stage production
FROM build as production
RUN npm install --omit=dev
CMD ["node", "index.ts"]
