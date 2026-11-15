extends CharacterBody2D

@export var speed = 500

func get_input():
	var input_direction = Input.get_vector ("P1left", "P1right", "P1up", "P1down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	move_and_slide()
