somata = require 'somata'

# Create a new Somata client
client = new somata.Client

# Execute SpeakerService.sayHello('world') and get the result...
client.remote 'speaker', 'sayHello', 'world', (err, hello) ->
    console.log '[speaker.sayHello] response: ' + hello

    # ... then execute SpeakerService.sayGoodbye('world')
    client.remote 'speaker', 'sayGoodbye', 'world', (err, goodbye) ->
        console.log '[speaker.sayGoodbye] response: ' + goodbye

        process.exit()

