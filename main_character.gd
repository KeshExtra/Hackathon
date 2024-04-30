extends CharacterBody2D
class_name Recyclebin

var SPEED = 500.0
const JUMP_VELOCITY = -400.0
var sprites = [load("res://open_blue.PNG"),load("res://open_green.PNG")]
var spriteloc = 1;
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 0
static var points = 0
var pointsNode = null
var sprite2D
# ProjectSettings.get_setting("physics/2d/default_gravity")
func _ready():
	pointsNode = get_parent().get_node("./points")
	sprite2D = get_node("./Sprite2D")
	
func _physics_process(delta):
	velocity.y = 0
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	position.y = 900
	
	if position.x > 500:
		position.x = 500
	if position.x < 80:
		position.x = 80


	
	for i in get_slide_collision_count():
		var c = get_slide_collision(i)
		if c.get_collider() is PaperCollect:
			c.get_collider().queue_free()
			
			points+=1
			$"../Ball".play()
			pointsNode.set_text("Points: " + str(points))
		if c.get_collider() is AlCan:
			c.get_collider().queue_free()
			get_last_slide_collision()
			points+=1
			$"../Sound".play()
			pointsNode.set_text("Points: " + str(points))
		if c.get_collider() is Plastic:
			c.get_collider().queue_free()
			get_last_slide_collision()
			points+=1
			$"../Sound".play()
			pointsNode.set_text("Points: " + str(points))
		if c.get_collider() is Organic:
			c.get_collider().queue_free()
			get_last_slide_collision()
			points+=1
			$"../Sound".play()
			pointsNode.set_text("Points: " + str(points))
	
func getPoints():
	return points

func setPoints(newP):
	points = newP		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.

# Replace with function body.


func _on_button_pressed():
	$Sprite2D.texture = sprites[spriteloc]
	if spriteloc == 0:
		spriteloc+=1
	else:
		spriteloc-=1
	# Replace with function body.
func _input(event):
	if Input.is_action_just_pressed("switch"):
		if spriteloc == 0:
			spriteloc+=1
		else:
			spriteloc-=1
		
