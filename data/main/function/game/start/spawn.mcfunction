#> main:game/start/spawn
#
# 人間をスポーンさせるぞ
# by MCF[main:game/start/*]
#

## 実行回数分人をスポーンさせる
    execute as @e[tag=SPAWNPOINT,tag=!Already,sort=random,limit=1] run tag @s add _
    execute at @e[tag=_] run tp @a[distance=1..,team=FFA,limit=1,sort=random] ~ ~ ~
    execute as @e[tag=_] run tag @s add Already
    execute as @e[tag=_,tag=Already] run tag @s remove _
    # スコアを１減らす
        scoreboard players remove _ _ 1
    # もしスコアが１以上なら繰り返す
        execute if score _ _ matches 1.. run return run function main:game/start/spawn

## リセット
    tag @e[tag=SPAWNPOINT] remove _
    tag @e[tag=SPAWNPOINT] remove Already
    scoreboard players reset _ _

## [DEV] 完了
    execute as @a[tag=DeV] run \
    tellraw @s [{"color":"light_purple","text":"["},{"bold":true,"color":"white","text":"DEV"},{"bold":false,"color":"light_purple","text":"]\n"},{"color":"white","text":"プレイヤースポーン完了"}]
