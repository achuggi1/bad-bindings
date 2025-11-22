## Represents any of the 3 individual characters the Player can be.
@abstract
class_name Character extends Area2D

#region VARIABLES

@export var speed = 400

@onready var player = get_parent()

#endregion VARIABLES

func _process(delta: float) -> void:
	move(delta)

## Moves Player according to Explorer direction and speed.
func move(delta):
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("Explorer_Move_Left"):
		direction.x -= 1
	if Input.is_action_pressed("Explorer_Move_Right"):
		direction.x += 1
	if Input.is_action_pressed("Explorer_Move_Up"):
		direction.y -= 1
	if Input.is_action_pressed("Explorer_Move_Down"):
		direction.y += 1
	
	if(direction.length() > 0):
		direction = direction.normalized()
	
	player.position += direction * speed * delta
