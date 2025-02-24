advancement revoke @s only ender_compass:consume

execute if predicate ender_compass:mainhand run return run function ender_compass:ender_compass/use/mainhand

execute if predicate ender_compass:offhand run return run function ender_compass:ender_compass/use/offhand