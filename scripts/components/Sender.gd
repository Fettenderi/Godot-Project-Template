class_name Sender
extends Node

## Used for entities such as: Levers or Buttons that activate other entities

@export var receivers : Array[Receiver]
@export var cooldown : float = 0.0

var _in_cooldown := false

func send_signal(_additional_info : Dictionary) -> void:
	if not _in_cooldown:
		if cooldown > 0.0:
			%SendCooldown.start(cooldown)
		_in_cooldown = true
		for _reciever in receivers:
			_reciever.recieved.emit(_additional_info)


func _on_send_cooldown_timeout():
	_in_cooldown = false
