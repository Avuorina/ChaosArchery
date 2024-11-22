#> player:hit
#
# 誰かしらがプレイヤーの矢でダメージを負ったときに実行されるぜ
# by ADV[player:hurt_by_player]
#

## その前に。お前、死んでるか？
    execute if entity @s[advancements={player:kill_player=true}] run return run function player:kill

## 各自にタグを付与
    tag @a[advancements={player:hit_by_arrow=true},limit=1] add victim
    tag @a[advancements={player:hurt_player=true},limit=1] add perpetrator

## 誰がだれを射抜いたかを表示させる
    execute if entity @s[tag=perpetrator] run tellraw @a [{"color":"white","text":"["},{"bold":true,"color":"aqua","text":"HIT"},{"bold":false,"color":"white","text":"] "},{"bold":true,"selector":"@a[tag=perpetrator]"},{"bold":false,"color":"white","text":"  ➳  "},{"bold":true,"selector":"@a[tag=victim]"}]

## RESET
    advancement revoke @a only player:hit_by_arrow
    advancement revoke @a only player:hurt_player
    tag @a[tag=victim] remove victim
    tag @a[tag=perpetrator] remove perpetrator