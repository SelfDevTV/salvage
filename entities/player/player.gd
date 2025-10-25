class_name Player
extends CharacterBody2D

@export var speed = 100.0

func _process(_delta: float) -> void:
    if Input.is_action_just_pressed("interact"):
        var zones = get_tree().get_nodes_in_group("interaction_zone")
        for zone: InteractionZone in zones:
            if zone.player_in_proximity == self:
                zone.interact(self)

func _physics_process(_delta):
    var input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
    velocity = input * speed
    move_and_slide()
