#ブロックディスプレイのスコアを代入する

execute store result storage target.number Target int 1 run scoreboard players get @s Target.Number

function aura:block_display/insert_pos with storage target.number


data remove storage target.number Target