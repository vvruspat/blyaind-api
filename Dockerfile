FROM node:16
# Create app directory
WORKDIR /
EXPOSE 8080
CMD [ "ls" ]
CMD [ "npm", "install" ]
CMD [ "npm", "start" ]