if (instance_exists(obj_dialogue)) exit;
if (alarm[0]  < 0) {
    instance_create_depth(obj_player.x, obj_player.y, depth, obj_bullet)
    
    alarm[0] = global.gun_cooldown
}