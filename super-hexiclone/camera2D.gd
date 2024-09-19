extends Camera2D

@export var shakeDuration: float = 0.2
@export var shakeIntensity: float = 10
var shakeTimer: float = 0.0
var shakeOffset: Vector2

func _process(delta):
	# Handle Rotation
	rotation_degrees += 0.5
	
	# Handle screen shake
	if shakeTimer > 0:
		shakeTimer -= delta
		shakeOffset = Vector2(randf_range(-shakeIntensity, shakeIntensity), randf_range(-shakeIntensity, shakeIntensity))
		position += shakeOffset
		print("Shaking! Timer: ", shakeTimer, " Offset: ", shakeOffset, " Position: ", position)
	else:
		shakeOffset = Vector2.ZERO
func shake():
	shakeTimer = shakeDuration
