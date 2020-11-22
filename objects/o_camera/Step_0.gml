/// @description Insert description here
// You can write your code in this editor

// move
x = lerp(x, move_to_x, camera_pan_speed);
y = lerp(y, move_to_y, camera_pan_speed);

camera_set_view_pos(camera, x - camera_get_view_width(camera)/2, y - camera_get_view_height(camera)/2);

if (follow != noone) {
	move_to_x = follow.x;
	
	var _buffer = global.tile_size / 2;
	move_to_y = follow.y - _buffer;
}

var xx = clamp(camera_get_view_x(camera), 0, room_width - camera_get_view_width(camera));
var yy = clamp(camera_get_view_y(camera), 0, room_width - camera_get_view_height(camera));

camera_set_view_pos(camera, xx, yy);
