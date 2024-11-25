#> dev:emphasis
#
# マーカーを強調表示
# by MCF[dev:tick]
#

# SPAWNPOINT
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:stick",count:1}}] at @e[tag=SPAWNPOINT] run particle composter ~ ~ ~ 0 5 0 0 5 force @s
# Already
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:turtle_scute",count:1}}] at @e[tag=Already] run particle composter ~ ~ ~ 0 5 0 0 5 force @s

