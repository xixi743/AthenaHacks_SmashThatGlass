/// @description conditions to change rooms

if (keyboard_check_pressed(vk_enter)) {
	//if the key enter is pressed
	switch(room) {
		case rm_start:
			room_goto(rm_game);
			break;
	}
}