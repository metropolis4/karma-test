express = require 'express'
indexController = require './controllers/index'

app = express()

app.set 'view engine', 'jade'
app.set 'views', __dirname + '/views'
app.use express.static(__dirname + '/app')

app.get '/', indexController.main
app.get '/templates/:templateid', indexController.templates

app.listen 9876, ->
  console.log 'Server is Listening to 9876'

module.exports = app
