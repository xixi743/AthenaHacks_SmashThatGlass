instance_create_layer(x,y, "Instances", obj_neg_comments);
alarm[0] = spawnRate;
if  (spawnRate >= 0) {
	spawnRate-=5;
} else {
	spawnRate = 10;
}