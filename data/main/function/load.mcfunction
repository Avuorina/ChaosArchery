#> ch_bow:load
#
# ロードしたら実行されるぜ
#
#

## チーム
    # 赤
        team add RED {"text": "赤チーム"}
            team modify RED collisionRule never
            team modify RED color red
            team modify RED friendlyFire false
    # 青
        team add BLUE {"text": "青チーム"}
            team modify BLUE collisionRule never
            team modify BLUE color blue
            team modify BLUE friendlyFire false

## スコアボード
    # dummy
        # HIT
            scoreboard objectives add HIT dummy {"text": "HIT数"}
        # HIT-ALL
            scoreboard objectives add HIT-ALL dummy {"text": "生涯HIT数"}
        # KILL
            scoreboard objectives add KILL dummy {"text": "KILL数"}
        # KILL-ALL
            scoreboard objectives add KILL-ALL dummy {"text": "生涯KILL数"}
        # DEATH
            scoreboard objectives add DEATH dummy {"text": "DEATH数"}
        # DEATH-ALL
            scoreboard objectives add DEATH-ALL dummy {"text": "生涯DEATH数"}
        # K/D
            scoreboard objectives add K.D dummy {"text": "キルデス比"}

## ゲームルール
    # 死亡画面削除
        gamerule doImmediateRespawn true
    # 死亡ログ削除
        gamerule showDeathMessages false

## [DEBUG]ロードされたぜ
    tellraw @a [{"text":"\n"},{"text":">","color":"#3b3b3b"},{"text":">","color":"#8f8f8f"},{"text":" RELOAD","color":"white","bold":true},{"text":"\n"}]