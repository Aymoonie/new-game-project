extends Area2D

func _ready() -> void:
	monitoring = true
	monitorable = true
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	print("Something entered DeathZone: ", body.name)

	if body.is_in_group("Player"):
		get_tree().reload_current_scene()
