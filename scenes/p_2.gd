extends CharacterBody2D

@export var speed = 500
@onready var sprite = $Runanimation


func get_input():
	var input_direction = Input.get_vector ("P2left", "P2right", "P2up", "P2down")
	velocity = input_direction * speed
	if velocity.x < 0:
		sprite.scale.x = -1
	if velocity.x > 0:
		sprite.scale.x = 1
	if velocity.x == 0:
		sprite.pause()
		sprite.frame = 0
	if velocity.x != 0:
		sprite.play("run")
		

func _physics_process(_delta):
	get_input()
	move_and_slide()
