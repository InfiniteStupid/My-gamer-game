if (alarm[4] < 0){
    if (global.weapon_chose = global.first_weapon) {
        hp -= global.first_damage
    } else {
        hp -= global.second_damage
    }
    image_blend = c_maroon;
    
    kb_x = sign(x - other.x);
    kb_y = sign(y - other.y);
    alarm[4] = 20;
}