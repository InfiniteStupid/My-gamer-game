if (instance_exists(obj_dialogue)) {
    alarm[1] = 120
}

if (instance_exists(obj_player) && (distance_to_object(obj_player) < 300)){
    direction = point_direction(x, y, obj_player.x, obj_player.y)
    move_type = "none"
    playerx = obj_player.x
    playery = obj_player.y
    
    alarm[2] = 30
    attacking = true
} else {
    alarm[1] = 120
}

