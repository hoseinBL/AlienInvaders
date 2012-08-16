static_ = require("node-static")

#
# Create a node-static server instance to serve the './public' folder
#
file = new (static_.Server)("./web")

#
# Serve files!
#
require("http").createServer((request, response) ->
  request.addListener "end", ->
    file.serve request, response

).listen 8080