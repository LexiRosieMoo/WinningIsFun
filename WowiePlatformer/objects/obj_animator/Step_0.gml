/// @description Insert description here
// You can write your code in this editor
x = obj_Player.x
y = obj_Player.y

if image_index > 4 and sprite_index == spr_fall
{
	image_speed = 0	
}
else
{
	image_speed = 1	
}

if sprite_index = spr_idle and image_index < 2 and irandom(60) < 2 and idleCooldown < 1
{
	if irandom(3) == 2
	{
		sprite_index = spr_idleYawn	
	}
	else
	{
		sprite_index = spr_idleBlink	
	}
	idleCooldown = 120
}

if idleCooldown > 0
{
	idleCooldown -= 1	
}

if image_index > 13 and sprite_index == spr_idleBlink
{
	sprite_index = spr_idle
}

if image_index > 39 and sprite_index == spr_idleYawn
{
	sprite_index = spr_idle
}