/// @description Insert description here
// You can write your code in this editor

instance_destroy(obj_Music)
if instance_number(obj_dead) == 0
{
	instance_create_depth(other.x, other.y, other.depth, obj_dead)
	obj_animator.visible = false
	audio_pause_all()
	audio_play_sound(snd_death, 0, false)
}