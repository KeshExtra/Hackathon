extends Node2D

var backBtn

# Called when the node enters the scene tree for the first time.
func _ready():
	backBtn = get_node("./backBtn")
	backBtn.pressed.connect(return_home)
	
func return_home():
	get_tree().change_scene_to_file("res://home.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
