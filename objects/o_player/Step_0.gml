/// @description Insert description here

// GET INPUT
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

// CALCULATE MOVEMENT
hsp = hsp + (right - left) * walk_spd;

// drag
hsp = lerp(hsp, 0, drag);

// stop
if (abs(hsp) <= 0.1) {
	hsp = 0;	
}

// facing
if (hsp != 0) {
	facing = sign(hsp);	
}

// limit speed
hsp = min(abs(hsp), max_hsp) * facing;

// APPLY MOVEMENT
x += hsp;
y += vsp;

// APPLY ANIMATION
if (hsp != 0) {
	image_xscale = facing;
	sprite_index = s_player_walk;
} else {
	sprite_index = s_player_idle;	
}