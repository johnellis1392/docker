import bluebird from 'bluebird'
global.Promise = bluebird

import Koa from 'koa'
import Router from 'koa-router'
import logger from 'koa-logger'
import http from 'http'
import zmq from 'zmq'
import uuidv4 from 'uuid/v4'


const { PORT, IMAGE_DIR } = process.env
const app = new Koa()
app.use(logger())

app.use((context) => {
  context.status = 200
  context.body = 'Hello, World!'
})


// Image router
const imageRouter = new Router({
  prefix: '/images'
})

let images = []
imageRouter.get('/', (context) => {
  context.body = images
})



// Make ZeroMQ Socket
let socket = zmq.socket('push')
socket.bindSync('tcp://rabbitmq:3000')
console.log('Producer bound to port 3000')

imageRouter.post('/', (context) => {
  return Promise.try(() => {
    const { name, content } = context.body
    const uuid = uuidv4()
    const image = {
      name,
      content,
      id: uuid
    }

    // Send image to queue
    socket.send(image)
    context.status = 200
  })
})


http.createServer(app.callback()).listen(PORT, () => {
  console.log(`App listening on port ${PORT}`)
})

