extends Node

func _on_timer_timeout() -> void:
	$MonologuePlaylist.play()
	$Timer.wait_time = randf_range(5, 30)
	$Timer.start()
