/// @description Randomly place rock objects in map
sprite_index = choose(
	spr_rock_small, 
	spr_rock_large
);
direction = irandom_range(0,359);
image_angle = irandom_range(0,359);