extends Node2D

var pointsTxt
var againBtn
var homeBtn
var totalPoints = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pointsTxt = get_node("./points")
	againBtn = get_node("./again")
	homeBtn = get_node("./home")
	
	homeBtn.pressed.connect(home)
	againBtn.pressed.connect(restart)
	
	totalPoints = MainCharacter.getPoints()
	pointsTxt.set_text("[center]" + str(totalPoints) + "[/center]")
	MainCharacter.setPoints(0)
	
	
	
func restart():
	get_tree().change_scene_to_file("res://main.tscn")

func home():
	get_tree().change_scene_to_file("res://home.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
