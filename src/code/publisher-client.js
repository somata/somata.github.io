var client, somata;

somata = require('somata');

client = new somata.Client;

client.on('publisher', 'announcement', function(message) {
  return console.log('[subscriber.onAnnouncement] New message:', message);
});