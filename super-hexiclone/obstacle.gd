extends AnimatableBody2D
class_name Obstacle
@onready var Shape: CollisionPolygon2D = $CollisionPolygon2D
var shrinkSpeed = 6.5
@onready var Score: Label = $"../Score"
var score = 0

func _ready():					
	Shape.scale = Vector2.ONE*10.0
	
	# Randomize Initial Rotation
	self.rotation_degrees = randf_range(-360, 360)
	randomize()
	
func _physics_process(delta: float) -> void:
	Shape.scale -= Vector2.ONE * shrinkSpeed * delta
	
	# Once it's shrunk delete
	if Shape.scale.x < 0.05:
		# Update score
		Score.updateScore()
		self.queue_free()
