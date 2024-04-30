extends Button
var textures = [load("res://open green.PNG"), load("res://open blue.PNG")]
var currentIndexTexture = 1
func _pressed():
	if currentIndexTexture == 1:
		self.icon = textures[currentIndexTexture]
		currentIndexTexture = 0
	else:
		self.icon = textures[currentIndexTexture]
		currentIndexTexture = 1
func _input(event):
	if Input.is_action_just_pressed("switch"):
		self.icon = textures[currentIndexTexture]
		if currentIndexTexture == 1:
			currentIndexTexture = 0
		else:
			currentIndexTexture = 1	
				
