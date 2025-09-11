extends CharacterBody2D


var SPEED = 300.0


func _physics_process(delta: float) -> void:
	
	var go_left_or_right := Input.get_axis("go_left", "go_right")
	var go_up_or_down := Input.get_axis("go_up", "go_down")
	
	var combine_direction := Vector2(go_left_or_right, go_up_or_down)
	
	velocity = combine_direction * SPEED
	
	move_and_slide()
