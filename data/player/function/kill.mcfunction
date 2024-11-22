#> player:kill
#
# 誰かしらがプレイヤーの矢で殺されたときに実行されるぜ
# by MCF[player:hit]
#

## 各自にタグを付与
    tag @a[advancements={player:kill_by_arrow=true},limit=1] add murdered
    tag @a[advancements={player:kill_player=true},limit=1] add killer

## 誰がだれを射抜いたかを表示させる
    tellraw @a [{"color":"red","text":"["},{"bold":true,"color":"dark_red","text":"KILL"},{"bold":false,"color":"red","text":"] "},{"bold":true,"selector":"@a[tag=killer]"},{"bold":false,"color":"white","text":" ☠ "},{"bold":true,"selector":"@a[tag=murdered]"}]

## KILL,DEATH数追加
    scoreboard players add @a[tag=murdered] DEATH 1
    scoreboard players add @a[tag=murdered] DEATH-ALL 1
    scoreboard players add @a[tag=killer] KILL 1
    scoreboard players add @a[tag=killer] KILL-ALL 1

## RESET
    advancement revoke @a only player:hit_by_arrow
    advancement revoke @a only player:hurt_player
    advancement revoke @a only player:kill_by_arrow
    advancement revoke @a only player:kill_player
    tag @a[tag=murdered] remove murdered
    tag @a[tag=killer] remove killer