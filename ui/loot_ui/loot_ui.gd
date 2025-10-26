class_name LootUI
extends CanvasLayer

const ITEM_SLOT = preload("uid://dm33djiui74p7")

@onready var items: GridContainer = $Root/CenterContainer/LootPanel/VBoxContainer/Items


func open_ui(slot_items: Array[ItemData], animate: bool):
	show()
	generate_empty_slots(slot_items)

	if animate:
		for child in items.get_children():
			child.reveal(true)
			await child.reveal_finished
	else:
		# No animation - reveal all slots immediately
		for child in items.get_children():
			child.reveal(false)
			
func clear_slots():
	for c in items.get_children():
		items.remove_child(c)
		c.queue_free()

func generate_empty_slots(slot_items: Array[ItemData]):
	clear_slots()
	for i in slot_items:
		var slot: ItemSlot = ITEM_SLOT.instantiate()
		slot.item = i
		items.add_child(slot)
		

func _ready() -> void:
	hide()
	SignalManager.open_ui_requested.connect(open_ui)


func _on_close_button_pressed() -> void:
	hide()
