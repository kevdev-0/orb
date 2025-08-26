extends Node
class_name Platform
# Base class for platforms

@export var platform_handle : String
@export var auth_flow : Shared.OAUTH_METHOD

signal on_chat_msg(viwer : Viewer, msg : String)

func _ready() -> void:
	pass
	
func auth() -> void:
	pass
	
