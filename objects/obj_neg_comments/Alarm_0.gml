// Wait 2 seconds and then trigger the alarm
alarm [1] = 60;
// Randomize the spawn
randomize();

// Spawns the object
instance_create(irandom_range(-750,-500),irandom_range(750,500),obj_neg_comments)

for(var i = 0; i < 5; i += 1)
{
    var len = 96;
    var dir = (360/5)*i;
    var len_offset = irandom_range(-750, 500);
    var dir_offset = irandom_range(-750, 500);
    var xx = x + lengthdir_x(len+len_offset, dir+dir_offset);
    var yy = y + lengthdir_y(len+len_offset, dir+dir_offset);      
    instance_create(xx, yy, obj_neg_comments);
}

direction = point_direction(x, y, mouse_x, mouse_y);
image_angle = 45 * round(direction/45); // 8 directions to image angle
// direction = image_angle

// take care of speed :
if keyboard_check(vk_up) speed = 4 else speed = 0;

// take care of strafing :
var strafe = 0;
if keyboard_check(vk_left) strafe -= 4;
if keyboard_check(vk_right) strafe += 4;

x += lengthdir_x(4,direction-90);
y += lengthdir_y(4,direction-90);
// direction-90 => perpendicular direction to 'direction'

//
while (distance_to_object(obj_neg_comments) < 100)
{
	x = random(-750,750);
	y = random (-500,500);
}

image_speed = 0;
image_index = irandom(2);

direction = random(360);
speed = 0.5 + random(2);