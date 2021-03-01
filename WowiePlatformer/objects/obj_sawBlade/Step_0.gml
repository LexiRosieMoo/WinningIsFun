/// @description Insert description here
// You can write your code in this editor
target = point_direction(obj_Player.x, obj_Player.y, x, y)+270
image_angle = lerp_but_with_angles(image_angle, target, 0.1)
rot-=5
if rot < 0
{
	rot += 360	
}