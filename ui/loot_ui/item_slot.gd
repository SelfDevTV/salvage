class_name ItemSlot
extends ColorRect

@export var item: ItemData
@onready var ui_item: ColorRect = $ColorRect/UIItem
@onready var texture_rect: TextureRect = $ColorRect/TextureRect

signal reveal_finished


func reveal(animate: bool):
    if animate:
        # Animate from 1.0 (hidden) to 0.0 (visible)
        var tween = create_tween()
        tween.tween_property(ui_item.material, "shader_parameter/animation_progress", 0.0, .5)
        await tween.finished
    else:
        # No animation - just show immediately
        ui_item.material.set_shader_parameter("animation_progress", 0.0)

    reveal_finished.emit()

func _ready() -> void:
    ui_item.material = ui_item.material.duplicate()
    var mat = ui_item.material as ShaderMaterial

    # Start at 1.0 (hidden/overlay visible) so animation can reveal it
    mat.set_shader_parameter("animation_progress", 1.0)
    texture_rect.texture = item.icon
    
