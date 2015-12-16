somata = require 'somata'

# Create a new Somata service named 'speaker'
service = new somata.Service 'speaker', {

    # With a few methods
    sayHello: (name, cb) ->
        cb null, 'Hello, ' + name + '!'

    sayGoodbye: (name, cb) ->
        cb null, 'Goodbye, ' + name + '!'
}
