FROM node:16.3.0-alpine
# Create app directory

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN npm install

CMD [ "node", "app.js" ]
