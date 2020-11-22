// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jump_dust(){
	var inst = instance_create_layer(x, y, "Dust", o_player_dust_jump);
	inst.image_xscale = facing;
}