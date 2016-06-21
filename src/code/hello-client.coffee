somata = require 'somata'

client = new somata.Client
client.remote 'hello', 'sayHello', 'Fred', (err, response) ->
    console.log 'Response: ' + response
