FROM node:alpine
WORKDIR /usr/src/app
EXPOSE 3000/tcp
ENV PORT=3000

# zeromq-dev
RUN apk add --update zeromq

COPY package.json package.json
RUN npm install --loglevel silent

COPY . .
CMD [ "npm", "start" ]

