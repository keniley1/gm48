/// @description Controls and places general objects (rocks, obstacles, homes, etc.)

repeat(50){
	// The game world size should not be hardcoded here...global variable somewhere?
	xCord = random_range(0, 1024*4);
    yCord = random_range(0, 768*4);
    instance_create_depth(xCord, yCord, 1, obj_rock);
}

// Here we place the setpieces
//repeat(12){
//	xCord = random_range(0, 1024*4);
//	yCord = random_range(0, 768*4);
//	instance_create_depth(xCord, yCord, 1, obj_setpiece);
//}

tmp_setpiece[0] = obj_monument;
tmp_setpiece[1] = obj_tree;
tmp_setpiece[2] = obj_money;
tmp_setpiece[3] = obj_watertower;
tmp_setpiece[4] = obj_building;
tmp_setpiece[5] = obj_garage;
random_set_seed(1);
for(var i = 0; i < 6; i++)
{
	xCord = random_range(0, 1024*2);
	yCord = random_range(0, 768*2);
	show_debug_message(string(place_free(xCord,yCord)))
	instance_create_depth(xCord, yCord, 1, tmp_setpiece[i]);
}