class_name Ball extends CharacterBody2D

@onready var timer = $Timer

var hSpeed: float = 200.0
var vSpeed: float = 200.0
var speedModifier = 0.05

func _ready():
	start_ball()

func _physics_process(_delta):
	velocity.x = hSpeed;
	velocity.y = vSpeed;
	
	move_and_slide()
	
func _on_area_2d_body_entered(body):
	if body is Wall or body is Player:
		var direction = body.direction
		if direction == 0:
			hSpeed = hSpeed * -1;
			hSpeed = hSpeed + (hSpeed * speedModifier)
		else:
			vSpeed = vSpeed * -1;
			vSpeed = vSpeed + (vSpeed * speedModifier)

func reset_ball():
	global_position = Vector2.ZERO
	hSpeed = 0
	vSpeed = 0
	timer.start(0.5)
	
func start_ball():
	var hRand = randi_range(0, 1)
	var vRand = randi_range(0, 1)
	
	if hRand == 1:
		hSpeed = 200.0 * 1
	else:
		hSpeed = 200.0 * -1
	
	if vRand == 1:
		vSpeed = 200.0 * 1
	else:
		vSpeed = 200.0 * -1

func _on_timer_timeout():
	start_ball()
