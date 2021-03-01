// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Avis code, @agentAvis on twitter

/// @desc lerp_but_with_angles
/// @arg angle
/// @arg target_angle
/// @arg value
function lerp_but_with_angles(angle, target_angle, value){
	angle += angle_difference(target_angle,angle)*value
	return angle
}