/// @description Insert description here
// You can write your code in this editor
distance = point_distance(x, y, obj_Player.x, obj_Player.y)

if distance < 133
{
	image_index = 4	
}
else if distance < 197
{
	image_index = 3	
}
else if distance < 261
{
	image_index = 2
}
else if distance < 325
{
	image_index = 1	
}
else if distance < 389
{
	image_index = 0	
}
else if distance < 453
{
	image_index = 0	
}
else
{
	image_index = 0
}