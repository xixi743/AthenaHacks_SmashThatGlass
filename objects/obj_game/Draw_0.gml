switch (room) {
	case rm_start:
		draw_set_halign(fa_center);
		draw_text_color(room_width/2, room_height/2, "Press ENTER to continue", c_black, c_black, c_black, c_black, 1);
		break;
		
	case rm_game:
		draw_text(190, 15, "LIVES: " +string(lives));
		draw_text(190, 90, "SCORE: "+string(score));
		break;
		
	case rm_directions:
		draw_text_color(room_width/2, 700, "Negative comments hurt you", c_black, c_black, c_black,c_black, 1);
		draw_text_color(room_width/2, 800, "Destroying them gives you points", c_black, c_black, c_black, c_black, 1);
		draw_text_color(room_width/2, 900, "Get 500 points to win!", c_black, c_black, c_black, c_black, 1); 
		draw_text_color(room_width/2, 1000, "Press ENTER to continue", c_black, c_black, c_black, c_black, 1);
		break;
		
	case rm_win:
		draw_text_color(room_width/2, 400, "Congrats! You Won!", c_white, c_white, c_white, c_white, 1);
		draw_text_color(room_width/2, 500, "Your score: "+string(score), c_white, c_white, c_white, c_white, 1);
		draw_text_color(room_width/2, 600, "Press ENTER to restart", c_white, c_white, c_white, c_white, 1);
		break;
		
	case rm_lose:
		draw_text_color(room_width/2, 200, "Oh no! You let the negative", c_white, c_white, c_white, c_white, 1);
		draw_text_color(room_width/2, 300, "comments bring you down :(", c_white, c_white, c_white, c_white, 1);
		draw_text_color(room_width/2, 400, "Your score: "+string(score), c_white, c_white, c_white, c_white, 1);
		draw_text_color(room_width/2, 500, "Press ENTER to restart", c_white, c_white, c_white, c_white, 1);
		break;
}	
