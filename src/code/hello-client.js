var somata = require('somata');

var client = new somata.Client;

client.remote('hello', 'sayHello', 'Fred', function(err, response) {
  return console.log('Response: ' + response);
});
