extends CharacterBody2D

const MAX_SPEED = 200


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = get_movement_vector()
	velocity = direction * MAX_SPEED
	move_and_slide()
	

func get_movement_vector():
	return Input.get_vector("move_left", "move_right", "move_up", "move_down")
