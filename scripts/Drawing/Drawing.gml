function draw_shadow(_offset, _offset2 = 0, size1 = 1, size2 = 1){
    draw_sprite_ext(spr_shadow, 0, x + _offset2, y + _offset, size1, size2, -1, c_black, 0.4)
}
