extends FileDialog
signal file_chosen(path)
func _ready() -> void:
	file_selected.connect(on_file_selected)
func on_file_selected(path):
	file_chosen.emit(path)
