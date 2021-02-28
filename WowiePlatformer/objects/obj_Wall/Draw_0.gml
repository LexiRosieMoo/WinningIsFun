/// @description Insert description here
// You can write your code in this editor



if place_free(x, y-2)
{
	sprite_index = spr_ground
}

if !place_free(x-64, y-64) and !place_free(x-2, y)
{
	sprite_index = spr_pf_plain_l_blend
}

if !place_free(x+64, y-64) and !place_free(x+2, y)
{
	sprite_index = spr_pf_plain_r_blend
}


if !place_free(x, y-2)
{
	sprite_index = spr_solid
}


if place_free(x-1, y)
{
	if place_free(x, y-2)
	{
		draw_sprite(spr_pf_plain_l_end, 0, x-8, y)	
	}
	else
	{
		draw_sprite(spr_pf_cliff_l_end, 0, x-8, y)
	}
}

if place_free(x+1, y)
{
	if place_free(x, y-2)
	{
		draw_sprite(spr_pf_plain_r_end, 0, x+64, y)	
	}
	else
	{
		//show_debug_message("HERE")
		draw_sprite(spr_pf_cliff_r_end, 0, x+64, y)
	}
}




draw_self()