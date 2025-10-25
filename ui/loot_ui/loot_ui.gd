class_name LootUI
extends CanvasLayer

const ITEM_SLOT = preload("uid://dm33djiui74p7")

@onready var items: GridContainer = $Root/CenterContainer/LootPanel/VBoxContainer/Items



const LOOT_TABLE = preload("uid://bsihle6aulemk")

var loot_items: Array[ItemData]

func open_ui():
    show()
    
    if not loot_items:
        loot_items = LOOT_TABLE.generate_loot()
        var count = 0
        for child: ItemSlot in items.get_children():
            if count == 2:
                return
            child.item = Color(randf(), randf(), randf(), 1)
            child.reveal()
            await child.reveal_finished
            count += 1
            

func _ready() -> void:
    hide()
    
    
    SignalManager.open_ui_requested.connect(func(): open_ui())
    for i in range(4):
        var slot: ItemSlot = ITEM_SLOT.instantiate()
        items.add_child(slot)
        
    
        
        


func _on_close_button_pressed() -> void:
    hide()
