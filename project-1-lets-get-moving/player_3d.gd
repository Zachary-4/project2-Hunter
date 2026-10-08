extends MeshInstance3D

var move_speed = 20.0
var normal_speed = 20
var sprint_speed = 40

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_pressed("sprint"):
		move_speed = sprint_speed
	else: move_speed = normal_speed
	
	if Input.is_action_pressed("move_up"):
		position = position + Vector3(-1,0,0)*move_speed*delta
	if Input.is_action_pressed("move_down"):
		position = position + Vector3(1,0,0)*move_speed*delta
	if Input.is_action_pressed("move_right"):
		position = position + Vector3(0,0,-1)*move_speed*delta
	if Input.is_action_pressed("move_left"):
		position = position + Vector3(0,0,1)*move_speed*delta
	if Input.is_action_pressed("move_foward"):
		position = position + Vector3(0,-1,0)*move_speed*delta
	if Input.is_action_pressed("move_backward"):
		position = position + Vector3(0,1,0)*move_speed*delta
