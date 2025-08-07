if (global.gui_move = false) {
    draw_sprite_stretched_ext(spr_box, 0, 20, 20, 140, 140, c_gray, 1)
    
    
    
    if (global.weapon_chose = "sword") draw_sprite(spr_sword_graphic, 0, 90, 90)
    else if (global.weapon_chose = "flintlock") draw_sprite(spr_flintlock_graphic, 0, 90, 90)
    else if (global.weapon_chose = "Gun") draw_sprite(spr_gun_graphic, 0, 90, 90)
}
    else {
        draw_sprite_stretched_ext(spr_box, 0, 1760, 20, 140, 140, c_gray, 1);

        if (global.weapon_chose = "sword") draw_sprite(spr_sword_graphic, 0, 1830, 90) 
        else if (global.weapon_chose = "flintlock") draw_sprite(spr_flintlock_graphic, 0, 1830, 90)
        else if (global.weapon_chose = "Gun") draw_sprite(spr_gun_graphic, 0, 1830, 90)
    }

xx = 170
yy = 20
draw_set_halign(fa_center)

var _health_barw = 256 * (global.alarmy / global.gun_cooldown) 

draw_sprite_stretched_ext(spr_box, 0, xx, yy, 256, 32, c_white, 1)
draw_sprite_stretched_ext(spr_box, 1, xx, yy, _health_barw, 32, c_red, 0.6);
