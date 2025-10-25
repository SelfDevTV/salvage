class_name ItemSlot
extends ColorRect

@export var item: Color
@onready var ui_item: ColorRect = $ColorRect/UIItem

signal reveal_finished


func reveal():
    var tween = create_tween()
    tween.tween_property(ui_item.material, "shader_parameter/animation_progress", 0.0, .5)
    await tween.finished
    reveal_finished.emit()

func _ready() -> void:
    
    ui_item.material = ui_item.material.duplicate()
    ui_item.color = item
    var mat = ui_item.material as ShaderMaterial
    
    mat.set_shader_parameter("animation_progress", 1.0)
