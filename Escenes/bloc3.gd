extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocitat = Vector2(1,0 )

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocitat
	if position.x == 330:
		velocitat = Vector2.LEFT 
	elif position.x == -30:
		velocitat = Vector2.RIGHT
