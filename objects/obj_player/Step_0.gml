if (instance_exists(obj_dialogue)) exit;

var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"))

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_collidable_parent, obj_npc_parent], undefined, undefined, undefined, move_speed, move_speed)

if (!_hor != 0 or _ver != 0) { //!!!Replace all of these with walking sprites
    if (_ver > 0) {sprite_index = spr_player_idle_down; facing = "down"}
    else if (_ver < 0) { sprite_index = spr_player_idle_up; facing = "up";}
    else if (_hor > 0) { sprite_index = spr_player_idle_right; facing = "right"}
    else if (_hor < 0) { sprite_index = spr_player_idle_left;facing = "left"}
        
    //facing = point_direction(0, 0, _hor, _ver);   
} else {
    if (_ver > 0) sprite_index = spr_player_idle_down
    if (_ver < 0) sprite_index = spr_player_idle_up
    if (_hor > 0) sprite_index = spr_player_idle_right
    if (_hor < 0) sprite_index = spr_player_idle_left 
        
    facing = point_direction(0, 0, _hor, _ver); 
}

if (place_meeting(x, y, obj_enemy_abc)) {
    
}

if (keyboard_check_pressed(vk_space) and !instance_exists(obj_attack)){
    if (weapon = "sword") {
        var _inst = instance_create_depth(x, y, depth, obj_attack);
        alarm[0] = 30
    }
}    

if (keyboard_check_pressed(ord("Q"))) {
    if (weapon = global.first_weapon) {
        weapon = global.second_weapon
        
        global.weapon_chose = global.second_weapon
    } else {
        weapon = global.first_weapon
        
        global.weapon_chose = global.first_weapon
    }
        
}

//for testing
/*
if (keyboard_check_pressed(ord("F"))) {
    var mock_x = random_range(obj_player.x - 400, obj_player.x + 400)
    var mock_y = random_range(obj_player.y + 400, obj_player.y - 400)
    do {
        mock_x = random_range(obj_player.x - 400, obj_player.x + 400) 
        mock_y = random_range(obj_player.y + 400, obj_player.y - 400)
    } until (place_meeting(mock_x, mock_y, tilemap2) && !place_meeting(mock_x, mock_y, tilemap))
        
    instance_create_depth(mock_x, mock_y, depth, obj_enemy_abc)
}
 * */

if (keyboard_check_pressed(ord("2"))) {
    create_dialogue_choice(global.enter_tav, 2, "yes", "no")
}

if (mouse_check_button(mb_left)) {
    if (alarm[1] < 0) {
        instance_create_depth(x, y, depth, obj_bullet)
        global.alarmy = 0
        alarm[1] = global.gun_cooldown
        alarm[2] = 1
    }
}