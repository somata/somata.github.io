somata = require 'somata'

# Create a service with no methods
service = new somata.Service 'publisher', {}

# Publish an 'announcement' event with message 'Hey there, world!'
sendAnnouncement = ->
    service.publish 'announcement', 'Hey there, world!'

# Publish every second
setInterval sendAnnouncement, 1000

