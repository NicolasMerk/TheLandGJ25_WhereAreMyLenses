extends MeshInstance3D

@onready var character : CharacterBody3D = get_tree().get_first_node_in_group("character")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var cast_to_mesh := mesh as SphereMesh
	if cast_to_mesh:
		cast_to_mesh.radius = global_position.distance_to(character.global_position) / 20.
		cast_to_mesh.height = cast_to_mesh.radius * 2.
