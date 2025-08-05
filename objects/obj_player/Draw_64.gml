if (global.gui_move = false) {
    draw_sprite_stretched_ext(spr_box, 0, 20, 20, 140, 140, c_gray, 1)
    
    if (global.weapon_chose = "sword") draw_sprite(spr_sword_graphic, 0, 90, 90)
    else if (global.weapon_chose = "flintlock") draw_sprite(spr_flintlock_graphic, 0, 90, 90)
}
    else {
        draw_sprite_stretched_ext(spr_box, 0, 1760, 20, 140, 140, c_gray, 1);

        if (global.weapon_chose = "sword") draw_sprite(spr_sword_graphic, 0, 1830, 90) 
            else if (global.weapon_chose = "flintlock") draw_sprite(spr_flintlock_graphic, 0, 1830, 90)
    }