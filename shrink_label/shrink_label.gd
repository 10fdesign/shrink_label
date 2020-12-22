tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("ShrinkLabel", "Label", preload("shrink_label_node.gd"), null)


func _exit_tree():
	remove_custom_type("ShrinkLabel")
