#プレイヤーのナンバーを指定
advancement revoke @a only aura:leave_world
execute if score Player.Number Player.Number matches -1 run advancement revoke @a only aura:enterd_world
execute if score Player.Number Player.Number matches -1 run scoreboard objectives remove Player.Number
scoreboard objectives add Player.Number dummy
scoreboard players add Player.Number Player.Number 1
scoreboard players operation @s Player.Number = Player.Number Player.Number
scoreboard players reset @s Leave.Game
