x += lengthdir_x(move_speed, image_angle);
y += lengthdir_y(move_speed, image_angle);

if (place_meeting(x, y, tilemap)) {
    instance_destroy()
}