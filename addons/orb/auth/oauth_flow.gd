class_name OAuthFlow
extends RefCounted
# Base class for auth flows.

signal token_received(token_data)

var peer : StreamPeerTCP

#region Abstracts
func _create_peer() -> StreamPeerTCP:
	return null
	
func _process_response(response : String) -> void:
	pass
#endregion

func poll() -> void:
	if not peer:
		peer = _create_peer()
	elif peer.get_status() == StreamPeerTCP.STATUS_CONNECTED:
		peer.poll()
		if peer.get_available_bytes() > 0:
			var response = peer.get_utf8_string(peer.get_available_bytes())
