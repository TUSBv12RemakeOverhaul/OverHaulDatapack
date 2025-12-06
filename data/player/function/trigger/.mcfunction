

# Triggers
execute if entity @s[advancements={player:attack=true}] run function player:trigger/adv_revoke/attack
execute if entity @s[advancements={player:guard=true}] run function player:trigger/adv_revoke/guard
execute if entity @s[scores={SneakTime=1..},predicate=!player:sneak] run function player:trigger/score_reset/sneak_time
execute if entity @s[advancements={player:using_item=true}] run function player:trigger/adv_revoke/using_item
