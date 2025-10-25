class_name Lootable
extends Node

@export var slots: int = 4
@export var loot_table: RLootTable

func generate_loot() -> Array[ItemData]:
	var items = loot_table.generate_loot()
	return items
