somata = require 'somata'

# Create a new Somata service named 'hello' with a single method 'sayHello'

service = new somata.Service 'hello', {

    sayHello: (name, cb) ->
        cb null, 'Hello, ' + name + '!'

}

