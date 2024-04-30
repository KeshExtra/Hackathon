extends Node
var count = 0
var array = [-1,-1,-1,-1,-1,-1,1]
var gs = 0
var ts = 1
var arr = [load("res://Paper.tscn"),load("res://tin.tscn"),load("res://bottle.tscn"),load("res://peel.tscn")]
var y : int= 400
var div = y/2
var lost = 0
var lostCounters = []


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(1, 4):
		lostCounters.append(get_node("./mistake" + str(i)))
	 # Replace with function body.
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if lost >= 3:
		#get_tree().change_scene("res://home.tscn")
		#$Label.text = "Score: " + str($"Blue Bin(Main Character)".points)
		get_tree().change_scene_to_file("res://lose.tscn")
		#queue_free()
	
func addLost():
	lost += 1
	for i in range(lost):
		lostCounters[i].set_pressed(true)

# Called when the node enters the scene tree for the first time.

	 # Replace with function body.
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.

	
	


func _on_timer_timeout():
	var a = randi()%6
	var op = array[a]
	var rand = (randi() % div)*a
	var o = randi() % 4
	var object = arr[o]
	var newObject = object.instantiate()
	var x = randi()	% 450 + 50
	newObject.position.x=x
	newObject.position.y=-20
	newObject.gravity_scale=gs
	newObject.linear_velocity = Vector2(0,y+rand)
	add_child(newObject) # Replace with function body.
	 # Replace with function body.
	$Timer.process_callback= ts
	
	if $"Blue Bin(Main Character)".points % 10 == 0:
		$"Blue Bin(Main Character)".SPEED += 150
		ts-=0.2
		y+=200
