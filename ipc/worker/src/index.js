import bluebird from 'bluebird'
global.Promise = bluebird

import zmq from 'zmq'

const { PORT, IMAGE_DIR } = process.env

// TODO: Integrate with zeromq

