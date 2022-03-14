extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocitat=500
var direccio=0
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(180,120)
 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _process(delta):
	direccio = Vector2.ZERO
	if Input.is_action_pressed("A dalt"):
		direccio += Vector2(0, -1)
		
	if Input.is_action_pressed("A baix"):
		direccio+=Vector2(0, 1)
		
	if Input.is_action_pressed("Dreta"):
		direccio+=Vector2(1, 0)
		
	if Input.is_action_pressed("Esquerra"):
		direccio+=Vector2(-1, 0)
	position+= direccio.normalized()*delta*velocitat

	
	
	
	
	
	
	
	
	
	
	
	
	
	
