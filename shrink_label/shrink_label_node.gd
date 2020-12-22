tool
extends Label


var containers = []


func _enter_tree():
	_find_container(get_parent())
	print(containers)


func _exit_tree():
	pass


func set_text(text):
	self.text = text
	hide()
	show()
	for container in containers:
		container.hide()
		container.show()


func _find_container(parent):
	if parent.is_class("Container"):
		containers.push_back(parent)
		_find_container(parent.get_parent())
