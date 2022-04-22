module main

import os

import nedpals.vex.server
import nedpals.vex.ctx
import nedpals.vex.router

fn main() {
	port := os.getenv('PORT')
	if port == '' {
		port = 8080
	} else {
		port = port.int()
	}
	println(port)
	mut app := router.new()
	app.route(.get, '/users/:name', fn (req &ctx.Req, mut res ctx.Resp) {
		name := req.params['name']
		res.send('Hello, $name!', 200)
	})
	server.serve(app, port)
}