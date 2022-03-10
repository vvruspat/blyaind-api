FROM node:16
# Create app directory
WORKDIR /usr/src/app
EXPOSE 8080
CMD [ "npm", "install" ]
CMD [ "npm", "start" ]