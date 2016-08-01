var client, somata;

somata = require('somata');

client = new somata.Client;

client.remote('speaker', 'sayHello', 'world', function(err, hello) {
  console.log('[speaker.sayHello] response: ' + hello);
  return client.remote('speaker', 'sayGoodbye', 'world', function(err, goodbye) {
    console.log('[speaker.sayGoodbye] response: ' + goodbye);
    return process.exit();
  });
});