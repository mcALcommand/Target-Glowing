#ブロックディスプレイのスコアを代入する

execute store result storage target.number Target int 1 run scoreboard players get @s Target.Number
execute store result storage target.number Tag int 1 run tag @s list

function aura:block_display/insert_pos with storage target.number


data remove storage target.number Target
data remove storage target.number Tag