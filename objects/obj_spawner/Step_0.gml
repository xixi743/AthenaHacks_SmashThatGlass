/// @description Insert description here
// You can write your code in this editor

timer = timer-delta_time;
if(timer <= 0.0) {
	instance_create(irandom_range(-750,-500),irandom_range(750,500),obj_neg_comments);
}