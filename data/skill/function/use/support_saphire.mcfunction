#> skill:use/support_saphire
#
# サポートスキルサファイアトリガー発動
function #oh_my_dat:please

# 発動条件とトリガーを比較
data modify storage skill: condition set from storage player: condition
execute store success score $temp _ run data modify storage skill: condition set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].support_saphire.condition
execute if score $temp _ matches 0 run return fail

# スキル情報を取得
data modify storage skill: using set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].support_saphire
# 共通のMPチェック処理へ
function skill:use/check_mp
