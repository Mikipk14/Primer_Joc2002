extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var mostra= false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if mostra:
		percent_visible+= 0.01


func _on_Area2D_body_entered(body):
	mostra = true
