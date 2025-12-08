#> player:trigger/
#
# プレイヤーのトリガー

# Triggers
execute if entity @s[advancements={player:attack=true}] run function player:trigger/attack
execute if entity @s[advancements={player:guard=true}] run function player:trigger/guard
execute if entity @s[advancements={player:tick=true}] run function player:trigger/tick
execute if entity @s[advancements={player:damage=true}] run function player:trigger/damage
execute if entity @s[scores={SneakTime=1..},predicate=!player:sneak] run function player:trigger/sneak_time

execute if entity @s[advancements={player:using_item=true}] run function player:trigger/use/item
execute if entity @s[scores={UseCarrotOnAStick=1..}] run function player:trigger/use/carrot_on_a_stick
execute if entity @s[scores={UseSnowBall=1..}] run function player:trigger/use/snowball
