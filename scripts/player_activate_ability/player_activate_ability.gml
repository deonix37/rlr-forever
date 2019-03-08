var ability = argument0;

switch (ability[? "Type"]) {
    case ABILITY_TYPES.oneshot:
        script_execute(ability[? "Script"]);
        
        break;
    case ABILITY_TYPES.continuous:
        activated_continuous_ability = ability;
        
        alarm[alarm_ability_end] = ability[? "Duration"];
        
        script_execute(ability[? "Script"], true);
        
        break;
    case ABILITY_TYPES.toggleable:
        var index = ds_list_find_index(activated_toggleable_abilities, ability[? "Script"]);
        
        if (index == -1) {
            ds_list_add(activated_toggleable_abilities, ability[? "Script"]);
        } else {
            ds_list_delete(activated_toggleable_abilities, index);
            script_execute(ability[? "Script"], false);
        }
        
        break;
}
