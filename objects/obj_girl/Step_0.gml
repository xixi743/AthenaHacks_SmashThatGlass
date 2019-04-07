/// @description Player movement

if keyboard_check(vk_right) {
	hspeed_ = 10;
} else if keyboard_check(vk_left) {
	hspeed_ = -10;
} else {
	hspeed_ = 0;
}

if (keyboard_check_pressed(vk_up) and y=400) {
	vspeed_ = -15;
}

if (keyboard_check_released(vk_up) and vspeed_<=0) {
		vspeed_/=-2;
		//gravity = .05
}

x+=hspeed_;
y+=vspeed_;

y= clamp(y, 0, 400);
x = clamp(x, 0+sprite_width/2, room_width-sprite_width/2);