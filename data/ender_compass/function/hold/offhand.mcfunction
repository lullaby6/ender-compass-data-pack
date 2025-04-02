execute store result score @s ender_compass.x run data get entity @s equipment.offhand.components."minecraft:lodestone_tracker".target.pos[0]
execute store result score @s ender_compass.y run data get entity @s equipment.offhand.components."minecraft:lodestone_tracker".target.pos[1]
execute store result score @s ender_compass.z run data get entity @s equipment.offhand.components."minecraft:lodestone_tracker".target.pos[2]

execute if dimension minecraft:overworld run scoreboard players set @s ender_compass.dimension 1
execute if dimension minecraft:overworld run item modify entity @s weapon.offhand ender_compass:dimension/overworld

execute if dimension minecraft:the_nether run scoreboard players set @s ender_compass.dimension 2
execute if dimension minecraft:the_nether run item modify entity @s weapon.offhand ender_compass:dimension/the_nether

execute if dimension minecraft:the_end run scoreboard players set @s ender_compass.dimension 3
execute if dimension minecraft:the_end run item modify entity @s weapon.offhand ender_compass:dimension/the_end

item modify entity @s weapon.offhand ender_compass:components
item modify entity @s weapon.offhand ender_compass:lore/base

execute if dimension minecraft:overworld run item modify entity @s weapon.offhand ender_compass:lore/dimension/overworld
execute if dimension minecraft:the_nether run item modify entity @s weapon.offhand ender_compass:lore/dimension/the_nether
execute if dimension minecraft:the_end run item modify entity @s weapon.offhand ender_compass:lore/dimension/the_end

scoreboard players reset @s ender_compass.x
scoreboard players reset @s ender_compass.y
scoreboard players reset @s ender_compass.z
scoreboard players reset @s ender_compass.dimension

playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.5
particle minecraft:end_rod ~ ~ ~ .5 1 .5 0.1 50 force @a