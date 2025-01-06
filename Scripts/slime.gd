extends Node2D

const speed = 60

var direction = 1

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		$AnimatedSprite2D.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		$AnimatedSprite2D.flip_h = false
	position.x += direction * speed * delta
