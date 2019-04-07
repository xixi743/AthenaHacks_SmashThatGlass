/// @description Player movement

if keyboard_check(vk_right) {
	hspeed_ = 10;
	//image_xscale = .25;
} else if keyboard_check(vk_left) {
	hspeed_ = -10;
	//image_xscale = -.25;
} else {
	hspeed_ = 0;
}

if (keyboard_check_pressed(vk_up) and y=1080) {
	vspeed_ = -15;
	audio_play_sound(snd_jump, 1, false);
}

//how to make it so she isn't just up constantly when up is pressed?
if (keyboard_check_released(vk_up) and vspeed_<=0) {
		vspeed_/=-2;
		gravity = .5;
}

x+=hspeed_;
y+=vspeed_
gravity = 0;


y= clamp(y, 832, 1080);
//show_debug_message(y)
x = clamp(x, 0+sprite_width/2-15, room_width-sprite_width/4+5);

if (keyboard_check_pressed(vk_space)) {
	if (keyboard_check(vk_right)) {
		var l_inst = instance_create_layer(x, y-400, "Instances", obj_heel);
		l_inst.image_angle = 0;
		l_inst.direction = 0;
		l_inst.speed = 20;
	}
	if (keyboard_check(vk_left)) {
		var r_inst = instance_create_layer(x-175, y-350, "Instances", obj_heel);
		r_inst.image_angle = 180;
		r_inst.speed = -20;
	}
}
