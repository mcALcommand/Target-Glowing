#召喚
summon block_display ~ ~ ~ {Glowing:1b,view_range:0.008f,Tags:["Aura"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,2f,1f]},block_state:{Name:"minecraft:black_stained_glass"}}

#見る対象の指定
scoreboard players operation @e[tag=Aura,tag=!Set.Ready,distance=..0.5] Player.Number = @s Player.Number

#見える対象の指定
scoreboard players add Target.Number Target.Number 1
scoreboard players operation @e[tag=Aura,tag=!Set.Ready,distance=..0.5] Target.Number = Target.Number Target.Number
$execute as $(Target) run scoreboard players operation @s Target.Number = Target.Number Target.Number
$tag $(Target) add Target

#見える時間の指定 #消えないようにタグ指定
tag @e[tag=Aura,tag=!Set.Ready,tag=!infinite,distance=..0.5] add infinite

#二重にしないようにタグ付与
tag @e[tag=Aura,tag=!Set.Ready,distance=..0.5] add Set.Ready

