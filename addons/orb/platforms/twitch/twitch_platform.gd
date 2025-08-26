extends Platform
class_name TwitchPlatform

var supported_flows = [
	Shared.OAUTH_METHOD.BROWSER_REDIRECT
	,
]

# TODO: Rewrite to support auth method being a child within the scene tree.
func _ready() -> void:
	if not (auth_flow in supported_flows):
		assert("Unsupported auth flow chosen. Failing!")
