extends Area2D

@export var next_level: PackedScene   # drag your "next level" scene here in the inspector

func _ready() -> void:
	monitoring = true
	monitorable = true
	#body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("Player"):
		if next_level:
			get_tree().change_scene_to_packed(next_level)
			print("Loading next level...")
		else:
			push_warning("No next_level assigned in LevelExit!")
