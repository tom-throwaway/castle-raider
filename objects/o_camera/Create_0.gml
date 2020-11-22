/// @description Insert description here
// You can write your code in this editor

var _w = camera_get_view_width(view_camera[0])
var _h = camera_get_view_height(view_camera[0])

camera = camera_create_view(0, 0, _w, _h, 0, -1, -1, -1, 128, 128);
view_set_camera(0, camera);

// follow
follow = noone;
move_to_x = x;
move_to_y = y;

// camera pan speed
camera_pan_speed_initial = 0.15;
camera_pan_speed = 1;

// reset camera to default pan speed
alarm[CAMERA_RESET] = 3;

room_goto_next();