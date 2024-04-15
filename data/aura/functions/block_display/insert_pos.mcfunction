
#位置取得
execute store result score @s x run data get entity @s Pos[0] 100000
execute store result score @s y run data get entity @s Pos[1] 100000
execute store result score @s z run data get entity @s Pos[2] 100000

#大きさを取得する
$execute store result score @s scale run attribute @e[scores={Target.Number=$(Target)},limit=1] minecraft:generic.scale get 50000
scoreboard players operation @s x += @s scale
scoreboard players operation @s z += @s scale


#位置替え 大きさ替え
#scaleを設定する/scaleを無効化する場合は下のコマンドを無効化してその下のコマンドの「#」を消す
$execute store result entity @s transformation.translation[0] float 0.00001 run scoreboard players operation @e[scores={Target.Number=$(Target)},limit=1] x -= @s x
$execute store result entity @s transformation.translation[1] float 0.00001 run scoreboard players operation @e[scores={Target.Number=$(Target)},limit=1] y -= @s y
$execute store result entity @s transformation.translation[2] float 0.00001 run scoreboard players operation @e[scores={Target.Number=$(Target)},limit=1] z -= @s z

$execute store result entity @s transformation.scale[0] float 1 store result entity @s transformation.scale[1] float 2 store result entity @s transformation.scale[2] float 1 run attribute @e[scores={Target.Number=$(Target)},limit=1] minecraft:generic.scale get
#execute if entity @e[tag=Target_Pos] run data merge entity @s {transformation:{scale:[1f,2f,1f]}}

#ターゲットPoy
$execute as @e[scores={Target.Number=$(Target)},limit=1] at @s run function aura:block_display/get_pos

#時間を減らす キルする
scoreboard players remove @s CanLook_Time 1
$tag @e[scores={Target.Number=$(Target)}] remove Target
kill @s[scores={CanLook_Time=..0},tag=!infinite]
$execute unless entity @e[tag=!Aura,scores={Target.Number=$(Target)}] run kill @s
scoreboard players reset @s[scores={CanLook_Time=..0}] CanLook_Time


