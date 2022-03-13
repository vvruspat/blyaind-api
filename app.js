const port = parseInt(process.env.PORT) || 8080;
const fastify = require('fastify')();

fastify.get('/', function (request, reply) {
  reply.code(200).send({ hello: 'world' })
});

fastify.listen(port);