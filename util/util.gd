extends Node
class_name NodeObject



var DIRECTORY  : String setget set_directory
var MAIN_CLASS : String setget set_main_class



func set_directory(_name : String) -> void: pass
func set_main_class(_name : String) -> void: pass

func _enter_tree() -> void:
	var script : Script = load('res://entry.gd')
	DIRECTORY  = script.CLASSES
	MAIN_CLASS = script.ENTRY

func add_child_from_script(script : Script) -> Node:
	var instance : Node = Node.new()
	instance.set_script(script)
	add_child(instance)
	return(instance)

func add_category() -> Node:
	var instance : Node = Node.new()
	return(instance)

func get_main() -> void:
	print(get_tree().root)

func load_class(name : String) -> Script:
	return(load('res://' + DIRECTORY + '/' + name + '.gd') as Script)
