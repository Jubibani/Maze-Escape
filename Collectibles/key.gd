extends Area2D


func _on_body_entered(body: Node2D) -> void:
	
		
	# If the thing that touched the Key is the player…
	if body.is_in_group("player"):
		# Tell the player: “You now have the Key!”
		body.have_key = true  # this changes the value from false to true

		# Then the Key disappears (because the player picked it up)
		queue_free()
