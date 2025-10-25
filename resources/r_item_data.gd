class_name ItemData
extends Resource

enum Rarity {
    COMMON,
    UNCOMMON,
    RARE,
    EPIC,
    LEGENDARY
}


@export var title: String
@export var rarity: Rarity  # Enum
@export var icon: Texture2D
@export var stack_size: int = 1

var item_id: String:
    get: 
        return resource_path
