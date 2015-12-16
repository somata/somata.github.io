doThing = (o) ->
    o.k = true

for i in [1,2,3,4]
    console.log "wow i is #{i}"

setInterval doThing, 5000

