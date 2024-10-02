extends Node

enum Player {
	One = 1,
	Two = 2
}

enum WallDirection {
	VERTICAL= 0,
	HORIZONTAL= 1
}

var player_one_score = 0
var player_two_score = 0

func add_score_player_one():
	player_one_score += 1

func add_score_player_two():
	player_two_score += 1
