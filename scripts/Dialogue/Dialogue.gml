function create_dialogue(_messages, name = true){
    if (instance_exists(obj_dialogue)) return;
    if (global.dial_timer < 0) {
    
    var _inst = instance_create_depth(0, 0, 0, obj_dialogue);
    _inst.messages = _messages;
    _inst.current_message = 0;
    _inst.put_name = name
    }
}

function create_dialogue_choice(_messages, choices_num, choice1, choice2, choice3 = undefined, choice4 = undefined) {
    if (instance_exists(obj_dialogue)) return;
    if (global.dial_timer < 0) {
        
        var _inst = instance_create_depth(0, 0, 0, obj_dialogue);
        _inst.messages = _messages;
        _inst.current_message = 0;
        _inst.press_e = false
    
        global.option1 = choice1
        global.option2 = choice2
        
        if (choices_num == 2) {
            var _inst1 = instance_create_depth(1, 1, -9999, obj_option2)
            _inst1.option1 = "Yes"
            _inst1.option2 = "No"
            _inst1.messages = _messages
            _inst1.choices = choices_num
        }
        if (choices_num == 3) {
            var _inst1 = instance_create_depth(1, 1, -9999, obj_option3)   
        
            _inst1.option1 = choice1
            _inst1.option2 = choice2
            _inst1.messages = _messages
            _inst1.choices = choices_num
        }
    }
}

function choice_made(dialogue, choice) {
    var _inst = instance_create_depth(0, 0, -9999, obj_dialogue)
    //Im gonna have to be lazy because you can't use strings to call an array
    var destroy = true
    if (dialogue = "tav") {
        if (choice = "Yes") {
            next_room(room_island1_tav)
        } else {
            destroy = true
        }
    }
    if (dialogue = "tav_leave") {
        if (choice = "Yes") {
            next_room(room_island1_2)
        }
    }
    if (dialogue = "test") {
        if (choice == "yes") {
            show_message("yes testy")
        }
    }
    if (destroy = true) {
        instance_destroy(obj_dialogue)
        instance_destroy(obj_option2)
        instance_destroy(obj_option3)
        //instance_destroy(obj_option2)
        //if (instance_exists(obj_option3)) instance_destroy(obj_option3)
        //if (instance_exists(obj_option4)) instance_destroy(obj_option4)
    }
}

char_colors = {
    "Game": c_orange,
    "none": c_gray
}

char_sounds = {
    
}

test = [
    {name: "Game", msg: "testting messagesese"},
]

enter_tav = [
    {name: "none", msg: "Enter the tavern?", ids: "tav"} 
]

leave_tav = [
    {name: "none", msg: "Leave the tavern?", ids: "tav_leave"}
]

test_option = [
    {name: "none", msg: "test?", ids: "test"}
]
