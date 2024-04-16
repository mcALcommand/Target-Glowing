#TP
execute as @a at @s if entity @e[tag=Aura] run function aura:block_display/block_display_tp1

#位置の取得
execute as @e[tag=Aura] at @s run function aura:block_display/insert_target

#リセット
execute unless entity @e[tag=Aura] run scoreboard players reset @e Target.Number


