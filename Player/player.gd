extends CharacterBody2D


var SPEED = 300;
var dash_power = 3000;

func _physics_process(delta: float) -> void:
	
	#make the "player" to listen 
	var go_left_or_right := Input.get_axis("go_left", "go_right")
	var go_up_or_down := Input.get_axis("go_up", "go_down")
	
	#combine moves into one direction
	var combine_direction := Vector2(go_left_or_right, go_up_or_down)
	
	#how fast "player" moves
	velocity = combine_direction * SPEED
	
	#tell the player to listen for our signal to dash
	if Input.is_action_just_pressed("go_dash"):
		dash_move()
	
	#magic word
	move_and_slide()
	
func dash_move():
	
	var last_direction = velocity.normalized()
	velocity = last_direction * dash_power
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
