function next_room(_room, time = 0){
    if (time = 0) {
        global.prev_room = global.current_room
        room_goto(_room)
        global.current_room = _room;
    } else {
        //!!!Set to something
    }
}

function next_room_no_prev(_room, time = 0){
    if (time = 0) {
        room_goto(_room)
        global.current_room = _room;
    } else {
        //!!!Set to something
    }
}

function array_count_value(array_to_search, value_to_find) {
    var count = 0;
    var array_lengthz = array_length(array_to_search);

    for (var i = 0; i < array_lengthz; i++) {
        if (array_to_search[i] == value_to_find) {
            count += 1;
        }
    }
    return count;
}