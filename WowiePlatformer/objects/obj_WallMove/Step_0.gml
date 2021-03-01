/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if point_distance(x-16, y+32, obj_Player.x, obj_Player.y) < 256
{
	x = clamp(lerp(x-16, obj_Player.x, 0.3), startingX, startingX+range*64)
}