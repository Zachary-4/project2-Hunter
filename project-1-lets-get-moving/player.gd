extends Sprite2D
var move_speed = 300
var normal_speed = 300
var sprint_speed = 600
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Mouse Click TP
	if Input.is_action_just_pressed("mouse_click"):
		global_position = get_global_mouse_position()
	
	# Dash Logic
	"""
	The player dashes in a direction when pressing right click.
	Its not optimized but it works.
	"""
	if Input.is_action_just_pressed("dash"):
		if Input.is_action_pressed("move_up"):
			position = position + Vector2(0,-100)
		if Input.is_action_pressed("move_down"):
			position = position + Vector2(0,100)
		if Input.is_action_pressed("move_right"):
			position = position + Vector2(100,0)
		if Input.is_action_pressed("move_left"):
			position = position + Vector2(-100,0)
	
	# Sprinting Logic
	if Input.is_action_pressed("sprint"):
		move_speed = sprint_speed
	else: move_speed = normal_speed
	
	# Movement Logic
	if Input.is_action_pressed("move_up"):
		position = position + Vector2(0,-1)*move_speed*delta
	if Input.is_action_pressed("move_down"):
		position = position + Vector2(0,1)*move_speed*delta
	if Input.is_action_pressed("move_right"):
		position = position + Vector2(1,0)*move_speed*delta
	if Input.is_action_pressed("move_left"):
		position = position + Vector2(-1,0)*move_speed*delta
