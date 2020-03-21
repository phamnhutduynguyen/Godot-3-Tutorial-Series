extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var coins = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	text = String(coins)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_coin_collected():
	#pass # Replace with function body.
	coins = coins + 1
	_ready()
	if coins == 5:
		$Timer.start()


func _on_Timer_timeout():
	#pass # Replace with function body.
	get_tree().change_scene("res://YouWin.tscn")
