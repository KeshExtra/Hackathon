extends Sprite2D

var spriteloc = 0
var sprites = [load("res://open_blue.PNG"),load("res://open_green.PNG")]

func _on_button_pressed():
	if spriteloc == 0:
		spriteloc+=1
	else:
		spriteloc-=1
	texture = sprites[spriteloc]
	# Replace with function body.
func _input(event):
	if Input.is_action_just_pressed("switch"):
		if spriteloc == 0:
			spriteloc+=1
		else:
			spriteloc-=1
			
		texture = sprites[spriteloc]
