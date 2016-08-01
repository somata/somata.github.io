var service, somata;

somata = require('somata');

service = new somata.Service('speaker', {
  sayHello: function(name, cb) {
    return cb(null, 'Hello, ' + name + '!');
  },
  sayGoodbye: function(name, cb) {
    return cb(null, 'Goodbye, ' + name + '!');
  }
});