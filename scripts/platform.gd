extends StaticBody2D


onready var textPopUp = $TextPopUp
onready var anim = $AnimationPlayer


func _ready():
	pass # Replace with function body.


#func _process(delta):
#	pass

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		anim.play("popup")
#		textPopUp.show()

func _on_Area2D_body_exited(body):
	if body.name == "Player":
		anim.play_backwards("popup")
#		textPopUp.hide()
