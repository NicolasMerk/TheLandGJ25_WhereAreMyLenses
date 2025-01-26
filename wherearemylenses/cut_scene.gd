extends Node2D


@export var animation_player : AnimationPlayer
@export var autoplay : bool = true


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "End_Cutscene":
		pass	 
