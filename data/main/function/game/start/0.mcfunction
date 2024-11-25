#> main:game/start/0
#
# デスマッチがスタートするぜ
# by MCF[main:game/start/]
#

## どこでもランダムにスポーンするぞ
    # 参加者をチームにいれる
        team join FFA @a[team=!Spectator]
    # 人数を確認
        execute as @a[team=FFA] run scoreboard players add Entrant _ 1
        # 実行回数は？
            scoreboard players operation _ _ = Entrant _

## ランダムスポーン
    function main:game/start/spawn

## 全員に弓を配ろうか
    loot give @a[team=FFA] loot main:bow
