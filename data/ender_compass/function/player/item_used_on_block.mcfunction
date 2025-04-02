advancement revoke @s only ender_compass:item_used_on_block

execute as @a if predicate ender_compass:mainhand if data entity @s SelectedItem.components."minecraft:lodestone_tracker" unless data entity @s SelectedItem.components."minecraft:consumable" at @s run return run function ender_compass:hold/mainhand

execute as @a if predicate ender_compass:offhand if data entity @s equipment.offhand.components."minecraft:lodestone_tracker" unless data entity @s equipment.offhand.components."minecraft:consumable" at @s run return run function ender_compass:hold/offhand