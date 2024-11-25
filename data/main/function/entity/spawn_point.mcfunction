#> main:entity/spawn_point
#
# ステージマーカーを設置
# by MCF[main:game/start]
#

## リセット
    kill @e[tag=Stage]
    kill @e[tag=SpawnPoint]

## [0] デバッグステージ
    execute positioned -64 64 -1 run summon marker ~ ~ ~ {Tags:["Stage","Stage-0"],CustomName:'{"bold":true,"color":"gray","text":"デバッグステージ"}'}
    execute positioned -77 64 12 run summon marker ~ ~ ~ {Tags:["SpawnPoint","Stage-0"]}
    execute positioned -53 64 9 run summon marker ~ ~ ~ {Tags:["SpawnPoint","Stage-0"]}
    execute positioned -49 64 -16 run summon marker ~ ~ ~ {Tags:["SpawnPoint","Stage-0"]}
    execute positioned -76 64 -13 run summon marker ~ ~ ~ {Tags:["SpawnPoint","Stage-0"]}
    execute positioned -64 64 -2 run summon marker ~ ~ ~ {Tags:["SpawnPoint","Stage-0"]}
    # ステージIDを定義
        scoreboard players set @e[tag=Stage-0] StageID 0
