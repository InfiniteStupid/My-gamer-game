
if (gig) {
    show_debug_message(option1)
    gig = false
}

var _dx = 200;
var _dy = gui_h * 0.6;
var _boxw = gui_w * 0.1;
var _boxh = gui_h * 0.2;

draw_set_halign(fa_left)
draw_set_valign(fa_middle)

draw_sprite_ext(spr_option_2, 0, _dx, _dy, 3, 3, 0, c_white, 1)

draw_set_font(Pirate_Big)
draw_set_color(c_black);

_dx -= 128 
_dy -= 44

draw_text(_dx, _dy, option1);

_dy += 88
draw_text(_dx, _dy, option2);

_dx -= 32

if (option_chose = 1) _dy -= 88
    
draw_sprite_ext(spr_chooser, 0, _dx, _dy, 1.5, 1.5, 0, c_white, 1)