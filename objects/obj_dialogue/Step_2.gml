if (current_message < 0) exit;
    
var _str = messages[current_message].msg;
var _name = messages[current_message].name;

if (current_char < string_length(_str)) {
    current_char += char_speed * (1 + keyboard_check(ord(input_key)));
    draw_message = string_copy(_str, 0, current_char);
    
    //if (alarm[0] < 0){
        //audio_play_sound(snd_default_voice, 70, false) 
        //alarm[0] = 4
//} 
}
else if (keyboard_check_pressed(ord(input_key)) && press_e = true)
{
    current_message++;
    if (current_message >= array_length(messages))
    {
        obj_game.jack = true
        instance_destroy();
        instance_destroy(obj_mouse)
        
    } else 
    {
        current_char = 0;
    }     
}  

depth = -9999