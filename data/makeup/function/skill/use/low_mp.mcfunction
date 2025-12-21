#> makeup:skill/use/low_mp
#
# MP不足演出

title @s times 0 0 20
title @s subtitle {"text":"MPが足りない！","color":"red"}
title @s title {"text":""}
playsound block.comparator.click player @a[distance=..16] ~ ~ ~ 1 1.2 0
particle smoke ~ ~1 ~ 0.5 0.5 0.5 0 30 force
