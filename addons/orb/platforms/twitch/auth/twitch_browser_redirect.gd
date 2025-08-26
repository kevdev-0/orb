extends OAuthFlow
class_name TwitchBrowserRedirectAuthFlow
# Uses browser to gain an OAuth token in order to access the Twitch API
# NOTE: This may be generalized.

var server : TCPServer

var port : int = 18297
var redirect : String = "http://localhost:%s" % port

func _ready() -> void:
	_start_tcp_server()

func _create_peer() -> StreamPeerTCP:
	return server.take_connection()
	
func _start_tcp_server() -> void:
	if not server:
		server = TCPServer.new()
		if server.listen(port) != OK:
			print("Could not listen to port %d" % port)
