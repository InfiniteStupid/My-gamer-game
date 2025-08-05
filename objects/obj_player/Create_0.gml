tilemap = layer_tilemap_get_id("Tiles_Col")
tilemap2 = layer_tilemap_get_id("Tiles_Back")

move_speed = 10;

facing = 0;

weapon = global.first_weapon

weapon_show = "sword"

instance_create_depth(20, 20, -9990, obj_check_move)

global.cheese = 0