class_name OAuthFlow
extends RefCounted
# Base class for auth flows.

signal token_received(token_data)

var peer : StreamPeerTCP

func poll() -> void:
	pass
