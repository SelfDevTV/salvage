class_name Enemy
extends CharacterBody2D

@export var target: Player
@export var speed: float = 80

func _physics_process(delta: float) -> void:
    var dir = position.direction_to(target.global_position)
    velocity = dir * speed
    move_and_slide()
    
