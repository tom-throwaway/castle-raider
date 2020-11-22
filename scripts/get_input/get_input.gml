// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(){
	// keyboard input
	left = keyboard_check(vk_left);
	right = keyboard_check(vk_right);
	up = keyboard_check(vk_up);
	down = keyboard_check(vk_down);
	attack = keyboard_check_pressed(vk_shift);
	jump = keyboard_check_pressed(vk_space);
	jump_held = keyboard_check(vk_space);
	block = keyboard_check(ord("Z"));
	
	// controller support
	var _dev = 0;
	if (gamepad_is_connected(_dev)) {
		var _deadzone = 0.3;
		left = left || gamepad_axis_value(_dev, gp_axislh) < -_deadzone;
		right = right || gamepad_axis_value(_dev, gp_axislh) > _deadzone;
		up = up || gamepad_axis_value(_dev, gp_axislv) < -_deadzone;
		down = down || gamepad_axis_value(_dev, gp_axislv) > _deadzone;
		attack = attack || gamepad_button_check_pressed(_dev, gp_face2);
		jump = jump || gamepad_button_check_pressed(_dev, gp_face1);
		jump_held = jump_held || gamepad_button_check(_dev, gp_face1);
		block = block || gamepad_button_check(_dev, gp_shoulderr);
	}
}