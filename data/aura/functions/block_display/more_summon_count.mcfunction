$function aura:block_display/summon {Time:"$(Time)",Target:"@e[$(Target),limit=1,tag=!Target]"}
scoreboard players remove Target Target.Number 1
$execute unless score Target Target.Number matches 0 run function aura:block_display/more_summon_count {Time:"$(Time)",Target:"$(Target)"}
execute if score Target Target.Number matches 0 run scoreboard players reset Target Target.Number