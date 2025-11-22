extends Node2D

# SIGNALS

signal died

# REFERENCES

@export var explorer: PackedScene
@export var fighter: PackedScene
@export var worker: PackedScene

var active_character: Node

# VALUES

@export var max_health: int = 5
var health: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	assert(explorer != null, "Explorer not set.")
	assert(fighter != null, "Fighter not set.")
	assert(worker != null, "Worker not set.")
	
	health = max_health
	switch_character("Explorer")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("Test_Damage"):
		damage(1)
	
	if Input.is_action_just_pressed("Test_Heal"):
		heal(1)
	
	switch_character()

func switch_character(name: String = ""):
	var new_character = null
	if Input.is_action_just_pressed("Test_Select_Explorer") or name == "Explorer":
		new_character = explorer.instantiate()
	elif Input.is_action_just_pressed("Test_Select_Fighter") or name == "Fighter":
		new_character = fighter.instantiate()
	elif Input.is_action_just_pressed("Test_Select_Worker") or name == "Worker":
		new_character = worker.instantiate()
	else:
		return
	
	if(active_character != null):
		active_character.queue_free()
	
	active_character = new_character
	add_child(active_character)
	active_character.position = Vector2.ZERO

func damage(amount: int):
	if(amount <= 0):
		return
	
	health -= amount
	if(health <= 0):
		die()
	
	print("Health: " + str(health))

func heal(amount: int):
	if(amount <= 0):
		return
	
	health += amount
	if(health > max_health):
		health = max_health
	
	print("Health: " + str(health))

func die():
	hide()
	died.emit()
	print("died")
