execute store result score @s ender_compass.x run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[0]
execute store result score @s ender_compass.y run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[1]
execute store result score @s ender_compass.z run data get entity @s SelectedItem.components."minecraft:lodestone_tracker".target.pos[2]

function ender_compass:link/link {"hand":"main"}

function ender_compass:link/effects