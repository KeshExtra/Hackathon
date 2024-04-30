extends Node2D

var playBtn
var instructionsBtn

# Called when the node enters the scene tree for the first time.
func _ready():
	playBtn = get_node("./play")
	instructionsBtn = get_node("./instructions")
	instructionsBtn.pressed.connect(instructionsScreen)
	playBtn.pressed.connect(playScreen)
	
func playScreen():
	get_tree().change_scene_to_file("res://main.tscn")
	
func instructionsScreen():
	get_tree().change_scene_to_file("res://instructions.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
