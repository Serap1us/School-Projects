extends AnimatableBody2D
class_name Obstacle
@onready var Shape: CollisionPolygon2D = $CollisionPolygon2D
var shrinkSpeed = 8.0

func _ready():					
	Shape.scale = Vector2.ONE*10.0
	
	# Randomize Initial Rotation
	rotation = randf_range(0, 2* PI)
	
func _physics_process(delta: float) -> void:
	Shape.scale -= Vector2.ONE * shrinkSpeed * delta
	# Once it's shrunk delete
	if Shape.scale.x < 0.05:
		self.queue_free()
		
	
	
	
