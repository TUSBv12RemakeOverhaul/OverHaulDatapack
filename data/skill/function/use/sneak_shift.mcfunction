#> skill:use/sneak_shift
#
# スニーク範囲化MP処理
execute store result score $temp _ run data get storage skill: using.sneak_mp_multiplier
scoreboard players operation $temp MP *= $temp _
scoreboard players set $temp _ 100
scoreboard players operation $temp MP /= $temp _
