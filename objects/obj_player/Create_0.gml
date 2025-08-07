tilemap = layer_tilemap_get_id("Tiles_Col")
tilemap2 = layer_tilemap_get_id("Tiles_Back")

move_speed = 10;

facing = 0;
if (global.prev_room = room_home) {
    weapon = global.first_weapon
} else {
    weapon = global.weapon_chose
}
weapon_show = global.weapon_chose

instance_create_depth(20, 20, -9990, obj_check_move)

global.cheese = 0