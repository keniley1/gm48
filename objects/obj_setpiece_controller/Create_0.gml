/// @description Stores information for each setpiece.

// First we place the setpieces throughout the game map
repeat(100){
	xCord = random_range(0, 1024*4);
	yCord = random_range(0, 1024*4);
	instance_create_depth(xCord, yCord, 1, obj_setpiece);
}

globalvar g_item_name, g_item_description, g_item_sprite, g_item_owned; 

g_item_name[0] = "Lisa's Keys";
g_item_description[0] = "Cars probably don't run very well under water...";
g_item_sprite[0] = sprite3;
g_item_owned[0] = false; //this is to check whether or not the player currently has the item in their inventory

g_item_name[1] = "Chess Piece";
g_item_description[1] = "Chess isn't nearly as fun when you're alone. Makes for a nice memory, though.";
//g_item_sprite[1] = spr_chess;
g_item_owned[1] = false;

g_item_name[2] = "Spatula";
g_item_description[2] = "Strange how a rusty piece of metal can bring back such fond memories of grilling, food, and yellow sponges.";
//g_item_sprite[2] = spr_spatula;
g_item_owned[2] = false;

g_item_name[3] = "Coffee Mug";
g_item_description[3] = "A shadow of a memory of the smell of freshly-brewed coffee fills the air for a brief moment.";
//g_item_sprite[3] = spr_coffee;
g_item_owned[3] = false;

enum item
{
	keys,
	chess,
	spatula,
	mug
}

enum stat
{
	name,
	sprite,
	description,
	found,
	owned
}

global.item_index = ds_grid_create(4, 4);

global.item_index[#item.keys, stat.name] = "Keys";
global.item_index[#item.keys, stat.sprite] = sprite3;
global.item_index[#item.keys, stat.description] = "Cars probably don't run very well under water...";
global.item_index[#item.keys, stat.found] = false;
global.item_index[#item.keys, stat.owned] = false;
