extends Node2D
class_name SpawnManager

@export var spawnRate : float = 1
@export var nextTimeToSpawn : float = 0.0
@export var obstacleScene : PackedScene
@export var targetNode : Node

func _ready():
	assert(obstacleScene)
	assert(targetNode)
	
	nextTimeToSpawn = Time.get_unix_time_from_system() + (1.0/spawnRate)

func _physics_process(delta: float) -> void:
	if Time.get_unix_time_from_system() >= nextTimeToSpawn:
		var newObstacle := obstacleScene.instantiate()
		targetNode.add_child(newObstacle)
		nextTimeToSpawn = Time.get_unix_time_from_system() + (1.0/spawnRate)
