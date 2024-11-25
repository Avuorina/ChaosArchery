#> main:game/start/
#
# ゲームスタート時の処理
#
#

## リセット(念の為)
    function main:game/reset

## プレイヤー定義
    tag @a[team=!Spectator] add PLAYER

## ステージ決めようぜ(0~0)
    execute store result score Stage _ run random roll 0..0

## ステージIDと一致するステージマーカーにタグ付け
    execute as @e[tag=Stage] if score @s StageID = Stage _ run tag @s add STAGE
    # スポーン場所もついでにタグ付け
        execute as @e[tag=SpawnPoint] if score @s StageID = Stage _ run tag @s add SPAWNPOINT

## モードごとに初期スポを変えたいので
    execute if score _ ModeID matches 0 run function main:game/start/0

## カウントダウン
    scoreboard players set Count _ 0

## [DEV] ステージの名前とかを表示
    execute as @a[tag=DeV] run \
    tellraw @s [{"color":"light_purple","text":"["},{"bold":true,"color":"white","text":"DEV"},{"bold":false,"color":"light_purple","text":"]\n"},{"color":"white","text":"ステージ："},{"bold":true,"selector":"@e[tag=STAGE]"}]
