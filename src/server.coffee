polar = require 'polar'
config = require './config'
h = require 'highlight.js'
fs = require 'fs'

app = polar config.app

app.get /\/(\w*)$/, (req, res) ->
    page = req.params[0] || 'home'
    res.locals.selected = (s) ->
        if page == s then 'selected' else ''

    res.locals.highlight = (filename) ->
        [filename, ext] = filename.split('.')
        source = fs.readFileSync "code/#{filename}.#{ext}"
        highlighted = h.highlight ext, source.toString()
        '<pre>\n' + highlighted.value.trim() + '</pre>'

    res.render page

app.start()
