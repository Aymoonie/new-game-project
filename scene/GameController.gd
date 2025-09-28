extends Node


@export var player: CharacterBody2D
@export var respawn_point: Node2D


@export var max_lives: int = 3
var current_lives: int

func _ready() -> void:
	current_lives = max_lives

func player_died() -> void:
	if current_lives > 0:
		current_lives -= 1
		print("Player died! Lives remaining: ", current_lives)
		respawn_player()
	else:
		print("Game Over!")
	  
		get_tree().reload_current_scene()

func respawn_player() -> void:
	if player and respawn_point:
		player.global_position = respawn_point.global_position
		print("Player respawned at: ", respawn_point.global_position)
	else:
		print("Error: Player or RespawnPoint not assigned in GameController!")
