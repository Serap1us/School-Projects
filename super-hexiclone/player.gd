extends Node2D
class_name Player

@export var moveSpeed := 5.0
@onready var hitbox: Area2D = $PlayerSprite/Area2D


func _ready():
	hitbox.body_entered.connect(_on_body_entered)
	
func _on_body_entered(body: Node2D) -> void:
	print(body)

func _physics_process(delta: float) -> void:
	# Write the rotation
	self.rotation -= 0.0
	
	if Input.is_action_pressed("ui_left") || Input.is_action_pressed("left"):
		self.rotation -= delta * moveSpeed
	if Input.is_action_pressed("ui_right") || Input.is_action_pressed("right"):
		self.rotation += delta * moveSpeed
