/// @description Insert description here
// You can write your code in this editor
if place_free(x, y-2)
{
	sprite_index = spr_ground
}

if !place_free(x-64, y-64) and !place_free(x-2, y) and !instance_place(x-64, y-64, obj_spikeCorked)
{
	sprite_index = spr_pf_plain_l_blend
}

if !place_free(x+64, y-64) and !place_free(x+2, y) and !instance_place(x+64, y-64, obj_spikeCorked)
{
	sprite_index = spr_pf_plain_r_blend
}
if !place_free(x, y-2)
{
	sprite_index = spr_solid
}