/// @desc Set up
/// @desc [wave, type, spawnpoint, delay]
waves = ds_list_create();
ds_list_add(waves,[0,comments, 0,0]);
ds_list_add(waves,[0,comments, 0,100]);
ds_list_add(waves,[0,comments, 1,50]);
ds_list_add(waves,[0,comments, 1,100]);

ds_list_add(waves,[1,comments, 0,10]);
ds_list_add(waves,[1,comments, 0,20]);
ds_list_add(waves,[1,comments, 0,30]);
ds_list_add(waves,[1,comments, 0,40]);

ds_list_add(waves,[2,comments, 0,10]);
ds_list_add(waves,[2,comments, 0,20]);
ds_list_add(waves,[2,comments, 0,30]);
ds_list_add(waves,[2,comments, 0,40]);

spawn[0,0] = x;
spawn[0,1] = x;
spawn[1,0] = x;
spawn[1,1] = x;

#macro = obj_neg_comments

#macro _WAVE 0
#macro _TYPE 1
#macro _SPAWN 2
#macro _DELAY 3

triggered = false;
timer = 0;
current_wave = 0;