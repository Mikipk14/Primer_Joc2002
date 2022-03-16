extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocitat=500
var direccio=0
# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(0, 0)
	position = Vector2(512,300)
 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _process(delta):
	direccio = Vector2.ZERO
	if position.x == 0:
		position.x = 1024
	if position.x == 1024:
		position.x = 0
	if position.y == 601:
		position.y = 0
	if position.y == 0:
		position.y = 601
	if Input.is_action_pressed("A dalt"):
		direccio += Vector2.UP
	if Input.is_action_pressed("A baix"):
		direccio+=Vector2.DOWN
	if Input.is_action_pressed("Dreta"):
		direccio+=Vector2.RIGHT
	if Input.is_action_pressed("Esquerra"):
		direccio+=Vector2.LEFT
	position+= direccio.normalized()*delta*velocitat
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
