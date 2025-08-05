if (!audio_is_playing(snd_island_1)) {
    audio_stop_all()
    audio_play_sound(snd_island_1, 90, true, 0.75)
}

if (global.prev_room = room_island1_2) {
    obj_player.x = 2414
    obj_player.y = 1232
}


if (global.room1enteries == false) {
   
     global.island1_1_data = {
    enemies_1_1: ["slime","slime","slime","slime","slime","slime",]
    
}
    
global.room1enteries = true    
    
global.tilemap = layer_tilemap_get_id("Tiles_Col")
global.tilemap2 = layer_tilemap_get_id("Tiles_Back")   
    
}

repeat (array_count_value(global.island1_1_data.enemies_1_1, "slime")) {
    
    var mock_x = random_range(540, 1730)
    var mock_y = random_range(90, 769)
     
    do { 
        mock_x = random_range(540, 1730)
        mock_y = random_range(90, 769)
    } until (
        collision_point(mock_x, mock_y, global.tilemap2, true, true) &&
        !collision_point(mock_x, mock_y, global.tilemap, true, true) &&
        !collision_point(mock_x, mock_y, obj_collidable_parent, true, true)
    )
        
    instance_create_depth(mock_x, mock_y, 0, obj_enemy_slime)
}

