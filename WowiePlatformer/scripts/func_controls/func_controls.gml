// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function func_controls(){
	cont_left = keyboard_check(vk_left) or keyboard_check(ord("A"))
	cont_right = keyboard_check(vk_right) or keyboard_check(ord("D"))
	cont_jump = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_space)
}