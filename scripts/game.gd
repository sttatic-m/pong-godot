extends Node

@onready var player_one_label = $Camera2D/Control/PlayerOneLabel
@onready var player_two_label = $Camera2D/Control/PlayerTwoLabel


func update_points():
	player_one_label.text = str(Global.player_one_score)
	player_two_label.text = str(Global.player_two_score)
