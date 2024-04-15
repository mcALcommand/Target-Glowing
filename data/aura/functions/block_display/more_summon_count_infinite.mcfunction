$function aura:block_display/summon_infinite {Target:"@e[$(Target),limit=1,tag=!Target]"}
scoreboard players remove Target Target.Number 1
scoreboard players set Target.comp Target.Number 0
$execute unless score Target Target.Number <= Target.comp Target.Number run function aura:block_display/more_summon_count_infinite {Target:"$(Target)"}
execute if score Target Target.Number <= Target.comp Target.Number run scoreboard players reset Target Target.Number
scoreboard players reset Target.comp Target.Number