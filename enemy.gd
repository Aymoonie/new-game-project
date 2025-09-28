extends CharacterBody2D
@onready var target: Node = $"../Player_fused"

const SPEED = 1.0
@onready var animated_sprite = $AnimatedSprite2D
func _physics_process(delta):
	var direction = (target.position-position).normalized()
	velocity= direction * SPEED
	animated_sprite.play("Idle")
	look_at(target.position)
	move_and_slide()
