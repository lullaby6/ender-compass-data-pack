$item modify entity @s weapon.$(hand)hand ender_compass:components
$item modify entity @s weapon.$(hand)hand ender_compass:lore/base

$execute if dimension minecraft:overworld run function ender_compass:link/dimension {"hand":"$(hand)","dimension":"overworld"}
$execute if dimension minecraft:the_nether run function ender_compass:link/dimension {"hand":"$(hand)","dimension":"the_nether"}
$execute if dimension minecraft:the_end run function ender_compass:link/dimension {"hand":"$(hand)","dimension":"the_end"}

scoreboard players reset @s ender_compass.x
scoreboard players reset @s ender_compass.y
scoreboard players reset @s ender_compass.z

function ender_compass:link/effects