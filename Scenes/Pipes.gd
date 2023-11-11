extends TileMap


func _ready():
	var randRangeTop = randi_range(1, 15)
	
	# Set Top Pipe
	# Build Pipe tube
	for i in range(randRangeTop):
		set_cell(0, Vector2i(6, i), 0, Vector2i(0, 2), 0)

	# Build Pipe mouth
	set_cell(0, Vector2i(6, randRangeTop), 0, Vector2i(0, 3), 0)
	set_cell(0, Vector2i(6, randRangeTop + 1), 0, Vector2i(0, 4), 0)


	# Set Bottom Pipe	
	# Build Pipe mouth
	set_cell(0, Vector2i(6, randRangeTop + 7), 0, Vector2i(0, 0), 0)
	set_cell(0, Vector2i(6, randRangeTop + 8), 0, Vector2i(0, 1), 0)	

	# Build Pipe tube
	for i in 15:
			set_cell(0, Vector2i(6, randRangeTop + 8 + i), 0, Vector2i(0, 2), 0)

func _process(delta):
	self.position.x -= 60 * delta

