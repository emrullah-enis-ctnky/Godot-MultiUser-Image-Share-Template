extends Node2D
var peer=ENetMultiplayerPeer.new()
@export var my_name:String
@onready var label: Label = $CanvasLayer/VBoxContainerImage/Label
const FILE_DIALOG = preload("res://file_dialog.tscn")
var file_dialog_instance:FileDialog=null
@onready var texture_rect: TextureRect = $CanvasLayer/VBoxContainerImage/TextureRect

func _ready() -> void:
	file_dialog_instance=FILE_DIALOG.instantiate()
	add_child(file_dialog_instance)
	file_dialog_instance.file_chosen.connect(on_file_chosen)
func _on_host_button_pressed() -> void:
	peer.create_server(1500)
	multiplayer.multiplayer_peer=peer
	multiplayer.peer_connected.connect(add_user)
	user_connected()
func _on_client_button_pressed() -> void:
	peer.create_client("localhost",1500)
	multiplayer.multiplayer_peer=peer
	user_connected()
func add_user(id):
	print("User "+str(id) +" connected.")
func user_connected():
	my_name=str(multiplayer.get_unique_id())

@rpc("any_peer")
func send_image(image:PackedByteArray,sender_name:String):
	label.text="User "+sender_name+" sended an image."
	var img:=Image.new()
	if img.load_png_from_buffer(image)!=OK:
		var tex:=ImageTexture.create_from_image(img)
		texture_rect.texture=tex
	elif img.load_jpg_from_buffer(image)!=OK:
		var tex:=ImageTexture.create_from_image(img)
		texture_rect.texture=tex
	
func _on_send_button_pressed() -> void:
	file_dialog_instance.popup_centered()
func on_file_chosen(path):
	var file=FileAccess.open(path,FileAccess.READ)
	if file:
		var img_data:PackedByteArray=file.get_buffer(file.get_length())
		file.close()
		rpc("send_image",img_data,my_name)
