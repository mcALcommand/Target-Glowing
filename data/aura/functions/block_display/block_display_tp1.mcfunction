#ブロックディスプレイのテレポート
#scaleがないバージョンではscaleが使われてる部分に「#」をつけて無効化する
#aura:block_display/block_display_tp2の$(scale)のところを1.5に変える
execute store result storage teleport scale float 1.5 run attribute @s minecraft:generic.scale base get
execute store result storage teleport playernumber int 1 run scoreboard players get @s Player.Number

function aura:block_display/block_display_tp2 with storage teleport

data remove storage teleport scale
data remove storage teleport playernumber




