/// @desc spawn stuff

if (triggered)
{ 
	// Check the list for enemies that are ready to spawn
	for (var i = 0; i <ds_list_size(waves); i++)
	{
		var next = ds_list_find_value(waves,i)
		if (next[_WAVE] == current_wave) && (next[_DELAY] == timer)
		{
			
			var spawnpoint = next[_SPAWN];
			instance_create_layer(spawn[spawnpoint,0],spawn[spawnpoint,1],"comments",next[_TYPE]);
		}
	}

	//Increase timer
	timer++;
	
	//Next wave or end spawner when all messages have been stabbed by heels
	if (remaining[current_wave]