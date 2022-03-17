extends KinematicBody2D
var velocitat_i = 200
var velocitat = Vector2.ZERO

var A_baix = Vector2.DOWN
var Gravetat = Vector2.DOWN * 980

func _physics_process(delta):
	move_and_slide(velocitat)
	velocitat += Gravetat *delta
