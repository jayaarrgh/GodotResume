extends Button

export(String) var addr = 'https://github.com/jayaarrgh'

func _ready():
	pass # Replace with function body.

#func _process(delta):
#	pass


func _on_Github_pressed():
	JavaScript.eval("window.open('" + addr + "', '_blank');")
