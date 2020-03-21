extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector3(0,0,0)
const SPEED = 12
const ROTSPEED = 9

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_left"):
		velocity.x = 0
	elif Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		$MeshInstance.rotate_z(deg2rad(-ROTSPEED))
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$MeshInstance.rotate_z(deg2rad(ROTSPEED))
	else:
		velocity.x = lerp(velocity.x, 0, 0.1)	
	
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_down"):
		velocity.z = 0
	elif Input.is_action_pressed("ui_up"):
		velocity.z = -SPEED
		$MeshInstance.rotate_x(deg2rad(-ROTSPEED))
	elif Input.is_action_pressed("ui_down"):
		velocity.z = SPEED	
		$MeshInstance.rotate_x(deg2rad(ROTSPEED))
	else:
		velocity.z = lerp(velocity.z, 0, 0.1)	
	move_and_slide(velocity)	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_enemy_body_entered(body):
	#pass # Replace with function body.
	if body.name == "KinematicBody_Steve":
		get_tree().change_scene("res://Game_Over.tscn")


func _on_Timer_timeout():
	pass # Replace with function body.
