#> player:trigger/
#
# プレイヤーのトリガー

# Triggers
execute if entity @s[advancements={player:attack=true}] run function player:trigger/attack
execute if entity @s[advancements={player:guard=true}] run function player:trigger/guard
execute if entity @s[advancements={player:tick=true}] run function player:trigger/tick
execute if entity @s[advancements={player:damage=true}] run function player:trigger/damage
execute if entity @s[advancements={player:kill_entity=true}] run function player:trigger/kill_entity
execute if entity @s[advancements={player:attack_melee=true}] run function player:trigger/attack_melee
execute if entity @s[advancements={player:attack_range=true}] run function player:trigger/attack_range
execute if entity @s[advancements={player:attack_sword=true}] run function player:trigger/attack_sword
execute if entity @s[scores={ItemThrow=1..}] run function player:trigger/item_throw

execute if entity @s[scores={SneakTime=1..},predicate=!player:sneak] run function player:trigger/sneak_time
execute if entity @s[advancements={player:using_item=true}] run function player:trigger/use/item
execute if entity @s[scores={UseCarrotOnAStick=1..}] run function player:trigger/use/carrot_on_a_stick
execute if entity @s[scores={UseSnowBall=1..}] run function player:trigger/use/snowball

#スポーンエッグの使用 ※CustomEnchantじゃなくてScoreboard使いました ごめん:sry:
execute if entity @s[scores={UseModeChange=1..}] run function player:trigger/use/use_mode_change
execute if entity @s[scores={UseSupportRuby=1..}] run function player:trigger/use/use_support_ruby
execute if entity @s[scores={UseSupportSapphire=1..}] run function player:trigger/use/use_support_sapphire
#食事 Trigger
execute as @s at @s run scoreboard players operation @s FoodChanging -= @s Food
execute as @s at @s run scoreboard players operation @s FoodChanging = @s Food
#体力変化 Trigger
execute as @s at @s run scoreboard players operation @s HealthChanging -= @s Health
execute as @s at @s run scoreboard players operation @s HealthChanging = @s Health

#矢の発射 Trigger
#execute as @e[type=#minecraft:arrows] at @s on origin (矢を発射したときに実行されます。)

