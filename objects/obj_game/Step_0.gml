if (global.weapon_chose = "flintlock" && !gun = true) {
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