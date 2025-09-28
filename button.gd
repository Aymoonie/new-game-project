extends Button




@export var game_scene: PackedScene

func _on_play_pressed() -> void:
	if game_scene:
		get_tree().change_scene_to_packed(game_scene)

func _on_quit_pressed() -> void:
	get_tree().quit()
