extends Platform
class_name TwitchPlatform

# TODO: Actual flow logic :)
func _ready() -> void:
	associated_platform = Shared.PLATFORMS.TWITCH
	if auth_flow == -1:
		assert("Unsupported auth flow chosen. Failing!")
