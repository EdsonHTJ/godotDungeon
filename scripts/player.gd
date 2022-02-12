extends RigidBody2D

const speed = 200

func _ready():
	pass
	
func _process(delta):
	var movY = int(Input.is_action_pressed("up")) - int(Input.is_action_pressed("down"))
	var movX = int(Input.is_action_pressed("right")) - int(Input.is_action_pressed("left"))
	
	
	if movX > 0:
		$AnimatedSprite.play("right")
	elif movX < 0:
		$AnimatedSprite.play("left")
	elif movY > 0:
		$AnimatedSprite.play("up")
	elif movY < 0:
		$AnimatedSprite.play("down")
	else:
		$AnimatedSprite.stop()
		$AnimatedSprite.frame = 1
	
		
		
	var dir = Vector2(movX, -movY)
	print(dir)
	position += dir.normalized() * speed * delta
