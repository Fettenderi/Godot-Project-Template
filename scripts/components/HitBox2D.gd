class_name HitBox2D
extends Area2D

@export var max_health : int

@onready var _health : int = max_health

var _in_grace_period := false

signal health_changed(value)
signal died

func _on_area_entered(area : Area2D) -> void:
	if area is HurtBox and not _in_grace_period:
		if randf() <= area.chance:
			_health -= area.damage
			emit_signal("health_changed", _health)
		_in_grace_period = true
		%GraceTimer.start(0.2)
		
		if _health <= 0:
			emit_signal("died")

func _on_grace_timer_timeout() -> void:
	_in_grace_period = false
