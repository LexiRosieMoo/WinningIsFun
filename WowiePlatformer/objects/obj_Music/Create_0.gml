/// @description Insert description here
// You can write your code in this editor

audio_resume_all()

if !audio_is_playing(snd_drunk_cat_)
{
	audio_play_sound(snd_drunk_cat_, 0, true)	
}