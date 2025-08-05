if (instance_exists(obj_dialogue)) exit;
    
if (keyboard_check_pressed(ord(input)) && distance_to_object(obj_player) < 16) {
    create_dialogue(global.test, 2)
}

//!!!remove from all rooms