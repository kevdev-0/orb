@tool
extends Node
class_name Platform
# Base class for platforms

@export var platform_handle : String

signal on_chat_msg(viwer : Viewer, msg : String)

func _get_configuration_warnings() -> PackedStringArray:
	var auth_children_found = 0
	
	for child in get_children():
		if child is OAuthFlow:
			auth_children_found += 1
	if auth_children_found == 0:
		return ["Needs some auth flow."]
	elif auth_children_found > 1:
		return ["Only a single auth flow can be added to a given platform."]
		
	return []

func _ready() -> void:
	pass
	
func auth() -> void:
	pass
	
