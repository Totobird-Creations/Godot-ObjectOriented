extends NodeObject



var points_count           : int = 10
var point_connection_count : int = 2
var group_connection_count : int = 2



func _enter_tree() -> void:
	add_child_from_script(load_class('camera'))
	add_child_from_script(load_class('map'))
