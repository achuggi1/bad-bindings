extends Node2D

signal died

@export var max_health: int = 5
var health: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	health = max_health


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Test_Damage"):
		Damage(1)
	
	if Input.is_action_just_pressed("Test_Heal"):
		Heal(1)

func Damage(amount: int):
	if(amount <= 0):
		return
	
	health -= amount
	if(health <= 0):
		Die()
	
	print("Health: " + str(health))

func Heal(amount: int):
	if(amount <= 0):
		return
	
	health += amount
	if(health > max_health):
		health = max_health
	
	print("Health: " + str(health))

func Die():
	hide()
	died.emit()
	print("died")
