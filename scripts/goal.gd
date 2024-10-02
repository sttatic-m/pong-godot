extends Area2D

@onready var game = $".."
@export var current_player: Global.Player

func _on_body_entered(ball):
	if ball is Ball:
		if current_player == Global.Player.One: 
			Global.add_score_player_one()
			game.update_points()
			ball.reset_ball()
		if current_player == Global.Player.Two: 
			Global.add_score_player_two()
			game.update_points()
			ball.reset_ball()
