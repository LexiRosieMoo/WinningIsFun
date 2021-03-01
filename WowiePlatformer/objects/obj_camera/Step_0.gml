/// @description Insert description here
// You can write your code in this editor


if instance_number(obj_Player) > 0
{

	interest = instance_nearest(x, y, obj_Interest)

	if abs(interest.x - obj_Player.x) < ((view_wport[0]/2)-128)
	{
		targetX = interest.x
	}
	else
	{
		targetX = obj_Player.x	
	}







	x = round(lerp(x, targetX, 0.1))
}