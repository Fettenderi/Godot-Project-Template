class_name PhysiscsParameters
extends Resource

@export_subgroup("Jump")
@export var jump_height : float
@export var jump_time_to_peak : float
@export var jump_reach : float

@export_subgroup("Movement")
@export var time_to_max_speed : float
@export var time_to_zero_speed : float

var _inverse_jump_time_to_peak : float
var jump_velocity : float
var gravity : float
var max_speed : float
var acceleration : float
var deceleration : float

## Call setup to calculate all the useful parameters
func setup() -> void:
	_inverse_jump_time_to_peak = 1.0 / jump_time_to_peak
	jump_velocity = - 2.0 * jump_height * _inverse_jump_time_to_peak
	gravity = 2.0 * jump_height * _inverse_jump_time_to_peak * _inverse_jump_time_to_peak
	max_speed = 0.5 * jump_reach * _inverse_jump_time_to_peak
	acceleration = max_speed / time_to_max_speed
	deceleration = max_speed / time_to_zero_speed
