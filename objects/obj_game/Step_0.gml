if (array_contains(global.guns, global.weapon_chose) && !gun = true) {
    gun = true
    instance_create_depth(x, y, depth, obj_aim)
}

if (gun = true) {
    if (not array_contains(global.guns, global.weapon_chose)) {
        instance_destroy(obj_aim)
        gun = false
    }
}

if (jack = true) {
    global.dial_timer = 30
    alarm[1] = 1 
    jack = false
}

if (array_contains(global.guns, global.weapon_chose)) {
    var index_to_find = global.weapon_chose
    var index = array_get_index(global.gun_cooldowns, index_to_find) + 1
    global.gun_cooldown = global.gun_cooldowns[index]
}

if (array_contains(global.guns, global.first_weapon)) {
    var jigga = array_get_index(global.gun_damages, global.first_weapon) + 1
    global.first_damage = global.gun_damages[jigga]
}

if (array_contains(global.guns, global.second_weapon)) {
    var jigga = array_get_index(global.gun_damages, global.second_weapon) + 1
    global.second_damage = global.gun_damages[jigga]
}

/*if (keyboard_check(ord("R"))) {
    //testing key
}*/