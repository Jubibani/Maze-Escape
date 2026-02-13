extends Area2D


func _on_body_entered(body: CharacterBody2D) -> void:
	
	if body.have_key == true:
		
		body.have_key = false
		go_next_level()

func go_next_level():
	get_tree().change_scene_to_file("res://Scenes/level_2_maze.tscn")
	
