if (instance_exists(obj_dialogue)) exit;

if (alarm[4] >= 0) {
    target_x = x + kb_x;
    target_y = y + kb_y;
}
if (move_type = "norm") {
var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_collidable_parent, obj_npc_parent], undefined, undefined, undefined, move_speed, move_speed)
} else if (move_type = "none"){
    
} else if (move_type = "attack") {
    x += lengthdir_x(move_speed, direction);
    y += lengthdir_y(move_speed, direction);
    
    if ((x >= playerx - 10 && x <= playerx + 10) && (y >= playery - 10 && y <= playery + 10))
{
    attacking = false
    move_type = "norm"
    move_speed = 0.5
    
    alarm[1] = 120
    
        x -= lengthdir_x(move_speed, direction)
        y -= lengthdir_y(move_speed, direction) 
    }
    if (place_meeting(x, y, tilemap)) {
        x -= lengthdir_x(move_speed, direction)
        y -= lengthdir_y(move_speed, direction) 
    }
}

