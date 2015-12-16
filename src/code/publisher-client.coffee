somata = require 'somata'

client = new somata.Client

# Subscribe to an 'announcement' event from the 'publisher' service
client.on 'publisher', 'announcement', (message) ->
    console.log '[subscriber.onAnnouncement] New message:', message

