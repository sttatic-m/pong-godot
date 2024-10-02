class_name Player extends CharacterBody2D

const SPEED = 300.0
@export var current_player: Global.Player

func _physics_process(delta):
	if current_player == Global.Player.One:
		move_player("player_one_up", "player_one_down", delta)
	if current_player == Global.Player.Two:
		move_player("player_two_up", "player_two_down", delta)
	
	move_and_slide()
	
func move_player(input_up: String, input_down: String, delta):
	var direction := Input.get_axis(input_up, input_down)
	velocity.y = direction * SPEED
	velocity.x = 0
