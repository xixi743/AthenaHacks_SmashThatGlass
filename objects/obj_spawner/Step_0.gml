/// @description Enemy Spawner

if !instance_exists(obj_neg_comments) {
	repeat(wave) {
		instance_create_layer(x,y, "Instances", obj_neg_comments);
	}
}
wave+=1;
