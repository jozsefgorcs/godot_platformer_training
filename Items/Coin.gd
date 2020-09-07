extends Node2D

var taken = false


func die():
	queue_free()


func _on_Area2D_body_entered(body):
	if taken:
		return 
	$AnimationPlayer.play("die")
	$AudioStreamPlayer2D.play()
	get_tree().call_group("Gamestate", "coins_up")
	taken = true
