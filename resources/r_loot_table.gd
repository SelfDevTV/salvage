class_name RLootTable
extends Resource

@export var table_name: String = "Basic Loot"
@export var loot_entries: Array[LootEntry] = []
@export var min_items: int = 2
@export var max_items: int = 4

func _pick_weighted_entry() -> LootEntry:
    # 1. Summe aller Weights berechnen
    var total_weight = 0.0
    for entry in loot_entries:
        total_weight += entry.weight
    
    # 2. Random zwischen 0 und total_weight
    var random_value = randf() * total_weight
    
    # 3. Durchlaufe entries, subtrahiere weight bis random <= 0
    var cumulative = 0.0
    for entry in loot_entries:
        cumulative += entry.weight
        if random_value <= cumulative:
            return entry
    
    # Fallback (sollte nie passieren)
    return loot_entries[0] if loot_entries.size() > 0 else null

func generate_loot() -> Array[ItemData]:
    var items: Array[ItemData] = []
    var count = randi_range(min_items, max_items)
    for i in count:
        var entry = _pick_weighted_entry()
        if entry:
            items.append(entry.item)
    return items
