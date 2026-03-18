extends Node

# Called when the node enters the scene tree for the first time.
func bench() -> void:
	var number = 0
	var start = Time.get_ticks_msec()
	
	for i in range(1000000000):
		number += 1
	
	print( Time.get_ticks_msec() - start )
	print(number)

func _ready() -> void:
	bench()

# ~44000ms on my machine - Godot v4.3.stable.official