extends Area2D
export var velocitat = 200
var direccio = Vector2.ZERO

func _ready():
#	position = direccio
#	position = Vector2(512,300)
	pass
	
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
	
func _on_Personatge_area_entered(area:Area2D):
	area.modulate = Color(0, 1, 0)
	if area.is_in_group('Inici'):
		modulate=Color(0,1,0)
	if area.is_in_group('Final'):
		area.modulate = Color(1,0,0)

func _on_Personatge_area_exited(area):
	modulate = Color(1, 1, 1)
	area.modulate = Color(1, 1, 1)
	
