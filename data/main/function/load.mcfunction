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
            team modify RED collisionRule never
            team modify RED color blue
            team modify RED friendlyFire false

## [DEBUG]ロードされたぜ
    tellraw @a [{"text":"\n"},{"text":">","color":"#3b3b3b"},{"text":">","color":"#8f8f8f"},{"text":" RELOAD","color":"white","bold":true},{"text":"\n"}]