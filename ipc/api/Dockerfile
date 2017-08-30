FROM node:alpine
WORKDIR /usr/src/app
ENV PORT=3000

# zeromq-dev
RUN apk add --update zeromq

COPY package.json package.json
RUN npm install --loglevel silent

COPY . .
CMD [ "npm", "start" ]

