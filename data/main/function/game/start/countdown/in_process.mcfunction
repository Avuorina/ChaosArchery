#> main:game/start/countdown/
#
# 3..2..1..
# by MCF[main:tick]
#

## tickを減らそう
    scoreboard players add Count _ 1

## 動けないようにしよう
    execute if score Count _ matches 1 as @a run attribute @a[tag=PLAYER,limit=1] generic.movement_speed base set 0
        # base = 0.10000000149011612
    execute if score Count _ matches 1 as @a run attribute @a[tag=PLAYER,limit=1] generic.jump_strength base set 0
        # base = 0.41999998688697815
    execute if score Count _ matches 1 run effect give @a[tag=PLAYER] darkness infinite 0 true

## モード名ドーン！！
    execute if score Count _ matches 1 as @e[tag=Mode] if score @s ModeID = MODE _ run tag @s add MODE
    # (タイトル表示時間など設定)
        execute if score Count _ matches 1 run title @a times 0 60 10
    execute if score Count _ matches 1 run title @a title {"selector":"@e[tag=MODE]"}
    execute if score Count _ matches 1 run title @a subtitle {"text": "サブモード？"}
    execute if score Count _ matches 1 as @a at @s run playsound block.beacon.power_select master @s ~ ~ ~ 10 1
    # リセット
        execute if score Count _ matches 60 run tag @e[tag=MODE] remove MODE

## 3..
    execute if score Count _ matches 60 run title @a title {"text": "3","bold": true,"color": "green"}
        execute if score Count _ matches 60 run title @a subtitle {"text": "■ ■ ■ ■ ■ ■ ■","color": "white"}
        execute if score Count _ matches 60 at @a run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 10 1
        execute if score Count _ matches 65 run title @a subtitle {"text": "■ ■ ■ ■ ■"}
        execute if score Count _ matches 65 at @a run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 10 1
        execute if score Count _ matches 70 run title @a subtitle {"text": "■ ■ ■"}
        execute if score Count _ matches 70 at @a run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 10 1
        execute if score Count _ matches 75 run title @a subtitle {"text": "■"}
        execute if score Count _ matches 75 at @a run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 10 1

## 2..
    execute if score Count _ matches 80 run title @a title {"text": "2","bold": true,"color": "yellow"}
        execute if score Count _ matches 80 run title @a subtitle {"text": "■ ■ ■ ■ ■ ■ ■","color": "white"}
        execute if score Count _ matches 80 at @a run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 10 1
        execute if score Count _ matches 85 run title @a subtitle {"text": "■ ■ ■ ■ ■"}
        execute if score Count _ matches 85 at @a run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 10 1
        execute if score Count _ matches 90 run title @a subtitle {"text": "■ ■ ■"}
        execute if score Count _ matches 90 at @a run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 10 1
        execute if score Count _ matches 95 run title @a subtitle {"text": "■"}
        execute if score Count _ matches 95 at @a run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 10 1
## 1..
    execute if score Count _ matches 100 run title @a title {"text": "1","bold": true,"color": "red"}
        execute if score Count _ matches 100 run title @a subtitle {"text": "■ ■ ■ ■ ■ ■ ■","color": "white"}
        execute if score Count _ matches 100 at @a run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 10 1
        execute if score Count _ matches 105 run title @a subtitle {"text": "■ ■ ■ ■ ■"}
        execute if score Count _ matches 105 at @a run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 10 1
        execute if score Count _ matches 110 run title @a subtitle {"text": "■ ■ ■"}
        execute if score Count _ matches 110 at @a run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 10 1
        execute if score Count _ matches 115 run title @a subtitle {"text": "■"}
        execute if score Count _ matches 115 at @a run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 10 1

## スタート！！
    execute if score Count _ matches 120 run title @a title {"text": "start!","bold": true,"color": "light_purple"}
    execute if score Count _ matches 120 run title @a subtitle {"text": " "}
    execute if score Count _ matches 120 at @a run playsound entity.dragon_fireball.explode master @a ~ ~ ~ 10 1
        # 移動制限等解除
            execute if score Count _ matches 120 as @a run attribute @a[tag=PLAYER,limit=1] generic.movement_speed base set 0.10000000149011612
            execute if score Count _ matches 120 as @a run attribute @a[tag=PLAYER,limit=1] generic.jump_strength base set 0.41999998688697815
            execute if score Count _ matches 120 run effect clear @a[tag=PLAYER] darkness

## スコアリセット
    execute if score Count _ matches 200 run scoreboard players reset Count _

## [DEV] タイム表示
    tellraw @a [{"color":"light_purple","text":"["},{"bold":true,"color":"white","text":"DEV"},{"bold":false,"color":"light_purple","text":"]\n"},{"color":"white","text":"カウント："},{"score":{"name":"Count","objective":"_"}}]