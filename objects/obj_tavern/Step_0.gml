if (instance_exists(obj_dialogue)) exit;
    
if (keyboard_check_pressed(ord(input)) && distance_to_object(obj_player) < 16) {
    create_dialogue_choice(global.enter_tav, 2, "Yes", "No")
}