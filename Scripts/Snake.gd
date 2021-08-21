
class_name Snake
var body
var direction:Vector2
const width = 40
var is_apple_colide
var body_copy

func _init():
	body = [Vector2(width,0),Vector2(0,0)]
	#body[0] is head
	direction = Vector2(width,0)
	is_apple_colide = false

func move():
	if(is_apple_colide):
		body_copy = body.slice(0,body.size() - 1)
		is_apple_colide = false
	else:
		body_copy = body.slice(0,body.size() - 2)
	var new_head = body_copy[0] + direction
	body_copy.insert(0,new_head)
	body = body_copy

	
