config = require 'config'
express = require 'express'
request = require 'request'

{ serviceName, port, services } = config
serviceName = process.env.SERVICE_NAME or serviceName
port = process.env.PORT or port

app = express()
app.post '/ping', (req, res) -> res.send "pong from: #{serviceName}"
app.listen port, -> console.log "#{serviceName} listening on port: #{port}"

looop = ->
	services.map ({ name, host, port }) ->
		return if serviceName is name

		console.log "ping to: #{name}"
		request.post { url: "http://#{host}:#{port}/ping" }, (err, res, body) ->
			if err
				console.log { err: err.message }, "#{name}"
			else
				console.log body

	setTimeout looop, 5000

looop()
