extends Area2D

@onready var label = $"../Label3"

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		label.text = "You win!!!"
