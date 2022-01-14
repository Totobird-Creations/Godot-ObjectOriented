extends NodeObject
class_name EntryObject



func _enter_tree() -> void:
	add_child_from_script(load_class(MAIN_CLASS))
