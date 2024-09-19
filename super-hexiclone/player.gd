extends Node2D
class_name Player

@export var moveSpeed := 5.0
@onready var hitbox: Area2D = $PlayerSprite/Area2D
@onready var camera: Camera2D = $Camera2D
var cameraZoom = 1.0
var timer = 0

func _ready():
	hitbox.body_entered.connect(_on_body_entered)
	
func _on_body_entered(body: Node2D) -> void:
	print(body)
	if camera:
		camera.shake()
	get_tree().change_scene_to_file("res://Main.tscn")



func _physics_process(delta: float) -> void:
	# Write the rotation
	self.rotation -= 0.0
	
	if Input.is_action_pressed("ui_left") || Input.is_action_pressed("left"):
		self.rotation -= delta * moveSpeed
	if Input.is_action_pressed("ui_right") || Input.is_action_pressed("right"):
		self.rotation += delta * moveSpeed
	
	$Camera2D.zoom = Vector2(cameraZoom, cameraZoom)
	if timer > 60: timer = 0
	cameraZoom = 1 + sin(timer * 0.2) * 0.02
	
