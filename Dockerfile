FROM node:16
# Create app directory
EXPOSE 8080
ENV NODE_ENV=production
ENV PORT=8080
WORKDIR /usr/src/app
COPY . /usr/src/app

RUN npm install --production

HEALTHCHECK --interval=12s --timeout=12s --start-period=30s \
    CMD curl --fail http://localhost:8080/health || exit 1

CMD [ "npm", "start" ]
