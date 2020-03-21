extends Area


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal coinCollected


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	rotate_y(deg2rad(3))


func _on_coin_body_entered(body):
	#pass # Replace with function body.
	if body.name == "KinematicBody_Steve":
		$AnimationPlayer.play("bounce")
		$Timer.start()


func _on_Timer_timeout():
	#pass # Replace with function body.
	emit_signal("coinCollected")
	queue_free()
