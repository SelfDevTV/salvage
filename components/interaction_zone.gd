class_name InteractionZone
extends Area2D

@export var awareness_shape: CollisionShape2D
@export var proximity_shape: CollisionShape2D

var awareness_shape_index: int = -1
var proximity_shape_index: int = -1

signal awareness_entered(interactor: Node2D)  # Grobe Reichweite
signal awareness_exited(interactor: Node2D)

signal proximity_entered(interactor: Node2D)  # Sehr nah, interactable
signal proximity_exited(interactor: Node2D)

var player_in_proximity: Player = null
var player_in_awareness: Player = null

signal interacted(interactor: Node2D)  # F gedrückt

func interact(interactor: Node2D):
    interacted.emit(interactor)
    
func _ready():
    # Finde die Shape-Indices für unsere CollisionShapes
    for shape_idx in get_shape_owners():
        var own = shape_owner_get_owner(shape_idx)
        if own == awareness_shape:
            awareness_shape_index = shape_idx
        elif own == proximity_shape:
            proximity_shape_index = shape_idx

func _on_body_shape_entered(_body_rid: RID, body: Node2D, _body_shape_index: int, local_shape_index: int) -> void:
    
    if body is Player:
        if local_shape_index == awareness_shape_index:
            player_in_awareness = body
            awareness_entered.emit(body)
        if local_shape_index == proximity_shape_index:
            player_in_proximity = body
            proximity_entered.emit(body)


func _on_body_shape_exited(_body_rid: RID, body: Node2D, _body_shape_index: int, local_shape_index: int) -> void:
    if body is Player:
        if local_shape_index == awareness_shape_index:
            player_in_awareness = null
            awareness_exited.emit(body)
        if local_shape_index == proximity_shape_index:
            player_in_proximity = null
            proximity_exited.emit(body)
