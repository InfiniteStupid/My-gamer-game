global.current_room = room_home
global.prev_room = room_home

audio_channel_num(128)

audio_stop_all()
if (!audio_is_playing(snd_dead_pirates)) audio_play_sound(snd_dead_pirates, 90, true)
    
//!!!Set one for each room
global.room1enteries = 0
global.room2enteries = 0