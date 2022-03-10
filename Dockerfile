FROM node:16
# Create app directory
WORKDIR /usr/src/app
CMD [ "npm", "install" ]
CMD [ "npm", "start" ]