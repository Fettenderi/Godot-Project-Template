class_name MathUtils
extends Object

static func explerp(from, to, delta):
	return lerp(from, to, 1 - exp(-delta))

## Changes the direction of the current value based on the given direction (-1, 1).
static func change_direction(current, direction):
	if direction == 0: return current
	return abs(current) * direction

## Used to calculate the volume in dB using a range from 0 (mute) to 10 (max volume)
static func calulate_volume(volume : float) -> float:
	return 20 * log(remap(volume, 0, 10, 0, 0.5)) / log(10)
