FROM node:16
# Create app directory
EXPOSE 8080
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .
CMD [ "ls" ]
CMD [ "npm", "start" ]