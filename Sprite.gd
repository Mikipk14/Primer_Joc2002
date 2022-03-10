extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocitat=Vector2(400,200)
var cont=0
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(500,300)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation_degrees+=1
	$sprite.rotation_degrees+=-1
	position+=velocitat*delta
	if position.x >=1024 or position.x<= 0:
		velocitat.x= velocitat.x*-1
	if position.y >= 601 or position.y <= 0:
		velocitat.y = velocitat.y*-1
		
	
	
	
	
	
	
	
	
	
