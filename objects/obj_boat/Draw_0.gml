/// @description Insert description here
// You can write your code in this editor
switch state
{
	case moving:
	{
		
		if keyboard_check(vk_up) or keyboard_check(vk_right) or keyboard_check(vk_left)
		{
			draw_sprite_ext(spr_wake, animation_key % 4, x - 32*cos(theta), y + 32*sin(theta), 1, 1, phi*180/global.pi, c_white, 1)
		}
	}
	
	case fishing:
	{

	}
}

ebb_scale = 1 + ebb_scaling_factor * sin(2 * global.pi * animation_key / ebb_period)
ebb_rotate = ebb_rotate_factor * sin(2 * global.pi * animation_key  / ebb_rotate_period)

draw_sprite_ext(spr_motor, -1, x - 32*cos(theta), y + 32*sin(theta), ebb_scale, ebb_scale, phi*180/global.pi, c_white, 1)
draw_sprite_ext(spr_boat, -1, x , y , ebb_scale, ebb_scale, theta*180/global.pi + ebb_rotate, c_white, 1)