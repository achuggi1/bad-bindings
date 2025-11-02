extends "res://Entities/Player/player.gd"

@export var speed = 400
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	super()
	
	screen_size = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	super(delta)
	
	Move(delta)

func Move(delta):
	var direction = Vector2.ZERO
	
	if(Input.is_action_pressed("Explorer_Move_Left")):
		direction.x -= 1
	if(Input.is_action_pressed("Explorer_Move_Right")):
		direction.x += 1
	if(Input.is_action_pressed("Explorer_Move_Up")):
		direction.y -= 1
	if(Input.is_action_pressed("Explorer_Move_Down")):
		direction.y += 1
	
	if(direction.length() > 0):
		direction = direction.normalized()
	
	position += direction * speed * delta
	position = position.clamp(Vector2.ZERO, screen_size)
