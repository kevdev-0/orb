extends OAuthFlow
class_name TwitchBrowserRedirectAuthFlow
# Uses browser to gain an OAuth token in order to access the Twitch API
# NOTE: This may be generalized.

@export var capacities : Array[String]

var server : TCPServer

var port : int = 18297
var redirect : String = "http://localhost:%s" % port

func _ready() -> void:
	login()
	
func login() -> void:
	pass
