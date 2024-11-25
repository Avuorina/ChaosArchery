#> main:dev/sign
#
# 色々便利な看板を取得させる
#
#

#data merge storage ca: {gamemode:Deathmatch}
    give @s cherry_sign[custom_name='"モード切り替え：デスマッチ"',block_entity_data={id:"minecraft:cherry_sign",front_text:{has_glowing_text:1b,messages:['{"text":""}','{"text":"Deathmatch","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"scoreboard players set MODE _ 0"}}','{"text":""}','{"text":""}']}}] 1
    give @s cherry_sign[custom_name='"モード切り替え：ワンショットワンキル"',block_entity_data={id:"minecraft:cherry_sign",front_text:{has_glowing_text:1b,messages:['{"text":""}','{"text":"OneSOneK","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"scoreboard players set MODE _ 1"}}','{"text":""}','{"text":""}']}}] 1