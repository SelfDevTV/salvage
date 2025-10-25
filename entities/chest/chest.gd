class_name Chest
extends Node2D

var show_interact_indicator: bool = false
@export var interaction_indicator: ColorRect


func _on_interaction_zone_awareness_entered(_interactor: Node2D) -> void:
    show_interact_indicator = true
    interaction_indicator.show()
    print("player entered")


func _on_interaction_zone_proximity_entered(_interactor: Node2D) -> void:
    interaction_indicator.modulate = Color.GOLD
    print("Player can now interact")


func _on_interaction_zone_awareness_exited(_interactor: Node2D) -> void:
    interaction_indicator.hide()
    show_interact_indicator = false


func _on_interaction_zone_interacted(_interactor: Node2D) -> void:
    print("player interacted with chest")
    SignalManager.open_ui_requested.emit()


func _on_interaction_zone_proximity_exited(_interactor: Node2D) -> void:
    interaction_indicator.modulate = Color.WHITE
