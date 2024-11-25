#> main:game/dtc_change_mode
#
# モードが変わったことを知らせるぜ
#
#

##モード早見表

# 0 = DeathMatch
# 1 = OneShotOneKill

##

## モードを変更
    execute store result score _ ModeID run scoreboard players get MODE _

## アドミンに知らせる (もっとスマートな方法があるような)
    execute if score _ ModeID matches 0 run \
    tellraw @a[tag=ADMIN] [{"color":"white","text":"["},{"bold":true,"color":"aqua","text":"INFO"},{"bold":false,"color":"white","text":"]\n"},"ゲームモードが",{"color":"red","bold":true,"text":"デスマッチ"},{"color":"white","bold":false,"text":"に変更されました。"}]
    execute if score _ ModeID matches 1 run \
    tellraw @a[tag=ADMIN] [{"color":"white","text":"["},{"bold":true,"color":"aqua","text":"INFO"},{"bold":false,"color":"white","text":"]\n"},"ゲームモードが",{"color":"red","bold":true,"text":"ワンショットワンキル"},{"color":"white","bold":false,"text":"に変更されました。"}]
