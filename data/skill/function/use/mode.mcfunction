#> skill:use/mode
#
# モードスキルトリガー発動
function #oh_my_dat:please

# 発動条件とトリガーを比較
data modify storage skill: condition set from storage player: condition
execute store success score $temp _ run data modify storage skill: condition set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].mode_setting.condition
execute unless score $temp _ matches 0 run return fail

# スキル情報を取得
data modify storage skill: using set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].mode_setting
# 共通のMPチェック処理へ
function skill:use/check_mp
