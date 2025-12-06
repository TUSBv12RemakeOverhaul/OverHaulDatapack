#> skill:use/check_mp
#
# スキル発動前MP比較処理

# 消費MPを取得
execute store result score $temp MP run data get storage skill: using.mp_cost

# スニーク範囲化スキルかつスニーク中ならMPに倍率をかける
execute if data storage skill: {using:{sneak_shift:true}} if score @s SneakTime matches 1.. run function skill:use/sneak_shift

# アイサツ補正
#execute if score @s Aisatsu matches 0.. run function skill:act/ninja/aisatsu

# エナジーセーブ補正
#execute if score @s EnergySave matches 0.. run function skill:act/hunter/energy_save/calc

# 空腹補正
scoreboard players set $temp _ 2
execute if predicate player:is_hunger run scoreboard players operation $temp MP *= $temp _

# MP比較 足りなければ中断して失敗処理を実行
execute if score @s MP < $temp MP run return run function makeup:skill/use/low_mp

# MP消費
scoreboard players operation @s MP -= $temp MP

# マクロで実行
function skill:use/run_macro with storage skill: using
