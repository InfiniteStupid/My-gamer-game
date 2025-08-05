if (instance_exists(obj_dialogue)) exit;

if (alarm[4] >= 0) {
    target_x = x + kb_x;
    target_y = y + kb_y;
}
var _hor = clamp(target_x - x, -0.75, 0.75);
var _ver = clamp(target_y - y, -0.75, 0.75);

move_and_collide(_hor * move_speed, _ver * move_speed, [tilemap, obj_collidable_parent, obj_npc_parent])