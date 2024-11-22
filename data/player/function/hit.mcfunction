#> player:hit
#
# 誰かしらがプレイヤーの矢でダメージを負ったときに実行されるぜ
# by ADV[hurt_player]
#

## 各自にタグを付与
    tag @a[advancements={player:hit_by_arrow=true},limit=1] add victim
    tag @a[advancements={player:hurt_player=true},limit=1] add perpetrator

## 誰がだれを射抜いたかを表示させる
    tellraw @a [{"bold":true,"selector":"@a[tag=perpetrator]"},{"bold":false,"color":"white","text":"  ➳  "},{"bold":true,"selector":"@a[tag=victim]"}]

## RESET
    advancement revoke @a only player:hit_by_arrow
    advancement revoke @a only player:hurt_player
    tag @a[tag=victim] remove victim
    tag @a[tag=perpetrator] remove perpetrator