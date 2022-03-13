const port = parseInt(process.env.PORT) || 8080;
const fastify = require('fastify')({
  http2: true,
  logger: true,
});

fastify.get('/', function (request, reply) {
  reply.code(200).send({
    hello: 'world',
    httpVersion: request.raw.httpVersion,
  })
});

fastify.listen(port, '0.0.0.0')