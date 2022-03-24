extends KinematicBody2D
var velocitat_i = 300
var velocitat = Vector2.ZERO

var A_baix = Vector2.DOWN
var Gravetat = Vector2.DOWN * 980

func _physics_process(delta):
	velocitat += Gravetat *delta
	velocitat.x = 0
	
	if Input.is_action_pressed("Dreta"):
		velocitat += Vector2.RIGHT * velocitat_i
	if Input.is_action_pressed("Esquerra"):
		velocitat += Vector2.LEFT * velocitat_i
	if Input.is_action_just_pressed("A dalt") and is_on_floor():
		velocitat += Vector2.UP * velocitat_i*1.75
	velocitat = move_and_slide(velocitat, Vector2.UP)
	anima(velocitat)

func anima(velocitat):
	if velocitat.x >0:
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = false
		
	elif velocitat.x <0:
		$AnimatedSprite.play("corre")
		$AnimatedSprite.flip_h = true
	
	if abs(velocitat.x) < 0.1:
		$AnimatedSprite.play("quiet")
	if velocitat.y < 0 :
		$AnimatedSprite.play("salta")
		


func _on_porta_body_entered(body):
	get_tree().change_scene("res://Pantalla2.tscn")
