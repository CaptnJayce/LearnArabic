extends TextureRect

var correct_shape = PackedVector2Array(
	[Vector2(50, 20), Vector2(50, 200), Vector2(70, 200), Vector2(70, 20)]
	)

@onready var highlight_node = $Highlight


# Called when the node enters the scene tree for the first time.
#func _ready():


func _input(event):
	if event is InputEventMouseMotion:
		var mouse_pos = event.global_position - get_global_transform().origin
		
		#mouse pos close to correct shape
		var closest_point = find_closest_point(mouse_pos, correct_shape)
		if closest_point.distance_to(mouse_pos) < 10:
			highlight_node.texture = hightlight_texture(closest_point, correct_shape) #highlight correct part



func find_closest_point(position, shape):
	var closest_point = shape[0]
	var closest_distance = position.distance_to(shape[0])
	
	for point in shape:
		var distance = position.distance_to(point)
		if distance < closest_distance:
			closest_distance = distance
			closest_point = point
			
	return closest_point



func hightlight_texture(closest_point, shape):
	var start_index = shape.find(closest_point)
	var end_index = (start_index + 1) % shape.size()
	
	var highlight_image = Image.new()
	highlight_image.create(texture.get_width(), texture.get_height(), false, Image.FORMAT_RGBAF)
	highlight_image.fill(Color(0, 0, 0, 0))
	
	var draw_rect = Rect2(shape[start_index], Vector2(20, 20))
	highlight_image.fill_rect(draw_rect, Color.GREEN)
	
	var texture_data = ImageTexture.new()
	texture_data.create_from_image(highlight_image)
	return texture_data

