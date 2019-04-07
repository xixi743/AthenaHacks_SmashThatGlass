/// @description conditions to change rooms

if (keyboard_check_pressed(vk_enter)) {
	//if the key enter is pressed
	switch(room) {
		case rm_start:
			room_goto(rm_directions);
			break;
			
		case rm_directions:
			room_goto(rm_game);
			break;
			
		case rm_win:
		case rm_lose:
			game_restart();
			break;
	}
}

if(room ==rm_game) {
	if (lives <= 0 and score <200) {
		room_goto(rm_lose);
		audio_stop_sound(snd_background_jam);
		audio_play_sound(snd_gameover, 3, false);
	}
	if (lives <=0 and score >=200) {
		room_goto(rm_win);
		audio_stop_sound(snd_background_jam);
		audio_play_sound(snd_win, 3, false);
	}
}