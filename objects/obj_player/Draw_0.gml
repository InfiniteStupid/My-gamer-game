draw_self()
var sprite = $"{sprite_index}"

if (string_count("right", $"{sprite}") || string_count("left", $"{sprite}")) {
    draw_shadow(10, 0, 0.75, 0.9)
} else { 
    draw_shadow(10, 0, 1, 0.9)
}