FROM node:16
# Create app directory
EXPOSE 8080

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN npm install --production

FROM alpine:3
RUN apk add --no-cache ca-certificates

CMD [ "npm", "start" ]
