#> main:entity/stage_name
#
# ステージ名を表示させるためのエンティティを定義
#
#

## KILL
    kill @e[tag=Mode]

## [0] デスマッチ
    execute positioned 0 0 0 run summon marker ~ ~ ~ {Tags:["Mode","Mode-0"],CustomName:'{"bold":true,"color":"red","text":"デスマッチ"}'}
    # スコア
        scoreboard players set @e[tag=Mode-0] ModeID 0
