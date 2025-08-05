image_blend = c_white

if (hp <= 0) {
    instance_destroy()
    
    var deleter = array_get_index(global.island1_1_data.enemies_1_1, "slime")
    if (global.current_room == room_island1_1) array_delete(global.island1_1_data.enemies_1_1, deleter, 1)
    
    
    //###If theres an death sequence put it here
}