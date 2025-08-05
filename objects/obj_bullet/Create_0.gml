direction = point_direction(obj_player.x, obj_player.y, obj_aim.x, obj_aim.y)
image_angle = point_direction(obj_player.x, obj_player.y, obj_aim.x, obj_aim.y)

move_speed = 10

tilemap = layer_tilemap_get_id("Tiles_Col")

image_xscale = 0.25
image_yscale = 0.25
//I had to be lazy because strings cant make sprites appear for some dumb reason
switch (global.weapon_chose) {
	case "flintlock":
        sprite_index = spr_bullet_flintlock
    break;
    
    default: 
        sprite_index = spr_bullet_flintlock
}