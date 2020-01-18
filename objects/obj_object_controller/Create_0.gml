/// @description Controls and places general objects (rocks, obstacles, homes, etc.)

repeat(50){
	// The game world size should not be hardcoded here...global variable somewhere?
	xCord = random_range(0, 1024*4);
    yCord = random_range(0, 768*4);
    instance_create_depth(xCord, yCord, 1, obj_rock);
}