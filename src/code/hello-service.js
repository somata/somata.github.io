var somata = require('somata');

var service = new somata.Service('hello', {
    sayHello: function(name, cb) {
        return cb(null, 'Hello ' + name + '!');
    }
});
