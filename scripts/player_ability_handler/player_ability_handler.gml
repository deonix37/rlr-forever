var is_ability_1 = keyboard_check_pressed(global.key_ability_1);
var is_ability_2 = keyboard_check_pressed(global.key_ability_2);

if (!is_ability_1 && !is_ability_2) {
    exit;
}

var prototype = global.runling_prototypes[? runling[? "Type"]];
var ability = is_ability_1 ? prototype[? "Ability 1"] : prototype[? "Ability 2"];

runling_energy -= ability[? "Energy"];

script_execute(ability[? "Script"]);
