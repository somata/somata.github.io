var sendAnnouncement, service, somata;

somata = require('somata');

service = new somata.Service('publisher', {});

sendAnnouncement = function() {
  return service.publish('announcement', 'Hey there, world!');
};

setInterval(sendAnnouncement, 1000);