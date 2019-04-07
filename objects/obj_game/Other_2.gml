/// @description Insert description here
// You can write your code in this editor
if(audio_is_playing(snd_background_jam)){
	audio_stop_sound(snd_background_jam);
}
	
audio_play_sound(snd_background_jam, 3, true);