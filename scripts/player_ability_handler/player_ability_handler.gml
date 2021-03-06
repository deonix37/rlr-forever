for (var i = 0; i < ds_list_size(activated_toggleable_abilities); i++) {
    script_execute(activated_toggleable_abilities[| i], true);
}

if (!is_undefined(activated_continuous_ability)) {
    script_execute(activated_continuous_ability[? "Script"], true);
}

var is_ability_1 = keyboard_check_pressed(global.key_ability_1);
var is_ability_2 = keyboard_check_pressed(global.key_ability_2);

if (!is_ability_1 && !is_ability_2) {
    exit;
}

var ability = prototype[? is_ability_1 ? "Ability 1" : "Ability 2"];

if (!is_dead && energy >= ability[? "Energy"]) {
    energy -= ability[? "Energy"];
    
    player_activate_ability(ability);
}
