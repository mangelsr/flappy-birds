extends RigidBody2D


func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1 and event.pressed:
			self.set_linear_velocity(Vector2.ZERO)
			self.apply_impulse(Vector2(0, -350))
			# self.set_angular_velocity(-3)
			$AnimatedSprite2D.play("fly")
