$ node publisher-service.js &
[didBind] Socket mulj67id bound to tcp://0.0.0.0:36206...
Registered service `publisher~ho5xqalh` on tcp://0.0.0.0:36206

$ node subscriber-client.js
[Client.subscribe] publisher~u3sg0zoj : announcement

Subscribing <mic9pdgi::publisher:announcementy7wq>
[subscriber.onAnnouncement] New message: Hey there, world!
[subscriber.onAnnouncement] New message: Hey there, world!
[subscriber.onAnnouncement] New message: Hey there, world!
...

