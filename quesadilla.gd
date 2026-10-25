extends ColorRect

var arrastrando = false

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.pressed:
				arrastrando = true
			else:
				arrastrando = false
				revisar_entrega()
	elif event is InputEventMouseMotion and arrastrando:
		# Movemos la quesadilla sin importar dónde esté el ratón
		$"../Quesadilla".position += event.relative

func revisar_entrega():
	var pos = $"../Quesadilla".position
	if pos.x > 650:
		print("¡Quesabirria Entregada!")
		$"../Quesadilla".queue_free()
