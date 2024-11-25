#> main:game/reset
#
# ゲームリセット処理
#
#

## マーカーリセット
    function main:entity/spawn_point

## スコアリセット
    scoreboard players reset @a KILL
    scoreboard players reset @a DEATH
    scoreboard players reset Entrant _
    scoreboard players reset Count _

## タグ削除
    tag @e[tag=STAGE] remove STAGE
    tag @a[tag=PLAYER] remove PLAYER

## [DEV] 完了
    execute as @a[tag=DeV] run \
    tellraw @s [{"color":"light_purple","text":"["},{"bold":true,"color":"white","text":"DEV"},{"bold":false,"color":"light_purple","text":"]\n"},{"color":"white","text":"リセット完了"}]