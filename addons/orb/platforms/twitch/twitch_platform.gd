extends Platform
class_name TwitchPlatform

var supported_flows = []

# TODO: Actual flow logic :)
func _ready() -> void:
	associated_platform = Shared.PLATFORMS.TWITCH
	
	if not (auth_flow in supported_flows):
		assert("Unsupported auth flow chosen. Failing!")
