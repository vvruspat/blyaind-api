FROM node:16.3.0-alpine
# Create app directory
EXPOSE 8080

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN npm install

RUN apk add --no-cache ca-certificates

CMD [ "npm", "start" ]
