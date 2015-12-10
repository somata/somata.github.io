polar = require 'polar'
config = require './config'

app = polar config.app

app.get /\/(\w*)$/, (req, res) ->
    page = req.params[0] || 'home'
    res.locals.selected = (s) ->
        if page == s then 'selected' else ''
    res.render page

app.start()
