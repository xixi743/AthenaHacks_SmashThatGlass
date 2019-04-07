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
			room_goto(rm_start);
			break;
			
		case rm_lose:
			room_goto(rm_start);
			break;
	}
}

if(room ==rm_game) {
	if (lives <= 0 and score <200) {
		room_goto(rm_lose);
		audio_play_sound(snd_gameover, 1, false);
	}
	if (lives >=200 and score >=200) {
		room_goto(rm_win);
		audio_play_sound(snd_win, 1, false);
	}
}