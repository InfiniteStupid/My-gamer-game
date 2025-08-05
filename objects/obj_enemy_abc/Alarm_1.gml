if (instance_exists(obj_player) && (distance_to_object(obj_player) < 100)){
    instance_create_depth(x, y, depth, obj_enemy_attack_abc) // This is what would usually happen,
    //but not with abc specifically
    sprite_index = spr_abc_attack1
    
    alarm[2] = 30
    attacking = true
} else {
    alarm[1] = 120
}