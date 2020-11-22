// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function anim() {
	sprite_index = sprites_array[state];
	mask_index = masks_array[state];
	image_xscale = facing;
	
	switch (state) {
		case states.JUMP:
			if (vsp < 0) {
				image_index = 0;	
			} else {
				image_index = 1;	
			}
		break;
		
		case states.ATTACK:
			if (!on_ground()) {
				sprite_index = s_player_air_attack;	
			} else {
				if (hsp != 0) {
					sprite_index = s_player_attack_walk;	
				} else {
					sprite_index = s_player_attack;	
				}
			}
		break;
	}
}