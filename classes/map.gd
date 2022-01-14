extends NodeObject



func _enter_tree():
	add_child_from_script(load_class('camera'))
	var points      : Node = add_category()
	var connections : Node = add_category()
	print('map_ready')
