/// @description player movement

/*
SPD = 3;

var xadd = keyboard_check(vk_right) - keyboard_check(vk_left);
var yadd = keyboard_check(vk_down) - keyboard_check(vk_up);

x += xadd * SPD;
y += yadd * SPD;
*/

/*right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check(vk_up);

if (right) {
	x+= 4;
}
if(left) {
	x-=4
}
if(jump) {
	y-=4
} */

player_spd = 3;

var xadd = keyboard_check(vk_right) - keyboard_check(vk_left);
var yadd = keyboard_check(vk_down) - keyboard_check(vk_up);

x += xadd * player_spd;
y += yadd * player_spd;
