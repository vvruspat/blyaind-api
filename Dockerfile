FROM node:16
# Create app directory
EXPOSE 8080
ENV NODE_ENV=production
WORKDIR /usr/src/app
COPY . /usr/src/app

RUN npm install --production

CMD [ "ls" ]
CMD [ "npm", "start" ]