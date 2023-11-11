extends TileMap

var pipe
var initial_position = 8
var speed = 60

func _ready():
	print("Pipe Instantiated...")
	var randRangeTop = randi_range(1, 15)
	
	# Set Top Pipe
	# Build Pipe tube
	for i in range(randRangeTop):
		set_cell(0, Vector2i(initial_position, i), 0, Vector2i(0, 2), 0)

	# Build Pipe mouth
	set_cell(0, Vector2i(initial_position, randRangeTop), 0, Vector2i(0, 3), 0)
	set_cell(0, Vector2i(initial_position, randRangeTop + 1), 0, Vector2i(0, 4), 0)


	# Set Bottom Pipe	
	# Build Pipe mouth
	set_cell(0, Vector2i(initial_position, randRangeTop + 7), 0, Vector2i(0, 0), 0)
	set_cell(0, Vector2i(initial_position, randRangeTop + 8), 0, Vector2i(0, 1), 0)	

	# Build Pipe tube
	for i in 15:
		set_cell(0, Vector2i(initial_position, randRangeTop + 8 + i), 0, Vector2i(0, 2), 0)

func _process(delta):
	self.position.x -= speed * delta
	#pass

func _on_area_2d_body_entered(body):
	if body.name == "Bird":
		print(body)
		Global.points += 1
