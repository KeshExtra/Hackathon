extends RigidBody2D
class_name Organic
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.y > 950:
		queue_free();
		get_parent().addLost()
	pass
