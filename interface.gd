extends Control

@onready var texto: Label = get_node("background/display/texto")
#GLOBAL
var a: int = 0
var b: int = 0

func _ready() -> void:
	for button in get_tree().get_nodes_in_group("button"):
		button.pressed.connect(on_button_pressed.bind(button.name))
		
func on_button_pressed(b_name: String):
	if b_name not in '+-d*r=':
		if a != 0:
			b = int(b_name)
		else:
			a = int(b_name)
	elif b_name == '=':
		texto.text = str(soma(a, b))

func soma(a: int, b: int) -> int:
	return a + b

func sub(a: int, b: int) -> int:
	return a - b

func multi(a: int, b: int) -> int:
	return a * b

func div(a: int, b: int) -> float:
	return a / b
