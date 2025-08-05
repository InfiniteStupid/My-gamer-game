function save_game()
{
    
    //var _a = [];
    
    var _data =
    {
        current_room: global.current_room,
        prev_room: global.prev_room,
        first_weapon: global.first_weapon,
        second_weapon: global.second_weapon,
        first_damage: global.first_damage,
        second_damage: global.second_damage,
        weapon_chose: global.weapon_chose,
        guns: global.guns,
        gun_cooldown: global.gun_cooldown,
        
        _island1: {

        room1enteries: global.room1enteries,

        island1_1: {
        enemies: global.island1_1_data.enemies_1_1 ,
        }
        }
    }
    
    //array_push(_a, _data)
    
    //var _string = json_stringify(_a);
    
    var _s = json_stringify(_data)
    
    var _file = file_text_open_write( "save.txt");
    
    file_text_write_string(_file, _s);
    
    file_text_close(_file);
    
    
    
}

function save_room() {
    var a = [];
}

function load_game()
{
    
    if (file_exists("save.txt")) 
    {
        
        var _file = file_text_open_read("save.txt");
        
        var _json = file_text_read_string(_file);
        
        var _d = json_parse(_json)
        
        //show_message($"{_a[1]}")
        
        //var _struct = _a[1]
        
        global.current_room = _d.current_room
        global.prev_room = _d.prev_room
        global.first_weapon = _d.first_weapon
        global.first_damage = _d.first_damage
        global.second_weapon = _d.second_weapon
        global.second_damage = _d.second_damage
        global.weapon_chose = _d.weapon_chose
        global.guns = _d.guns
        global.gun_cooldown = _d.gun_cooldown
        
        global.island1_1_data.enemies_1_1 = _d._island1.island1_1.enemies
        global.room1enteries = _d.island1.room1enteries
        
        next_room_no_prev(_d.current_room)
        
        file_text_close(_file)
        
        
        
    }
    
}