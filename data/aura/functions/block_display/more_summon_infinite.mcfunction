$execute store result score Target Target.Number if entity @e[$(Target)]
scoreboard players set Target.comp Target.Number 0
$execute if score Target Target.Number > Target.comp Target.Number run function aura:block_display/more_summon_count_infinite {Target:"$(Target)"}
scoreboard players reset Target.comp Target.Number