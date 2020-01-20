/// @description Insert description here
// You can write your code in this editor
switch state
{
	case menu:
	{
		draw_set_color(global.c_dblue)
		
		draw_rectangle(0, 240, 1280, 960, 0)
		draw_sprite_ext(spr_menu, -1, 0, 0, 4, 4, 0, c_white, 1)
		
	}
	break
	
	case item_display:
	{
		draw_set_color(global.c_dblue)
		draw_set_alpha(0.9)
		draw_rectangle(0, 240, 1280, 960, 0)
		
		draw_set_color(global.c_bgreen)
		draw_set_alpha(0.75)
		draw_rectangle(0, 0, 1280, 240, 0)
		
		draw_set_color(global.c_dblue)
		draw_set_halign(fa_center)
		
		nearest_setpiece_obj = instance_nearest(x, y, obj_setpiece)
		//text = nearest_setpiece_obj.string
		text1 = nearest_setpiece_obj.text
		text2 = "Press Y to add this to your time capsule or N to throw it back."
		text3 = "There are " + string(3 - time_capsule.num_items) + " of 3 spaces left in the time capsule."
		
		draw_text(640, 120, text1)
		draw_text(640, 140, text2)
		draw_text(640, 160, text3)

		draw_sprite_ext(nearest_setpiece_obj.sprite, -1, 640, 640, 4, 4, 0, c_white, 1)
	}
	break
	
	case end_game_1:
	{
		draw_set_alpha(1)
		
		draw_set_color(global.c_dblue)
		draw_rectangle(0, 0, 1280, 960, 0)
		
		draw_sprite_ext(time_capsule.items[1], -1, 240, 640, 4, 4, -30, c_white, 1)
		draw_sprite_ext(time_capsule.items[0], -1, 640, 640, 4, 4, 0, c_white, 1)
		draw_sprite_ext(time_capsule.items[2], -1, 1040, 640, 4, 4, 30, c_white, 1)
		
		draw_set_halign(fa_center)
		draw_set_color(c_white)
		draw_text(640, 80, "These are the things I saved. Some memories of the past. [PRESS ANY KEY]")
	}
	break
	
	case end_game_2:
	{
		draw_set_alpha(1)
		
		draw_rectangle(0, 0, 1280, 960, 0)
		draw_sprite_ext(spr_end_game_2, -1, 0, 0, 4, 4, 0, c_white, 1)
		
		draw_set_color(c_white)
		draw_set_halign(fa_center)
		draw_text(640, 80, "It's not much but maybe it's enough to remember us by. [PRESS ANY KEY]")
	}
	break
	
	case end_game_3:
	{
		draw_set_alpha(1)
		draw_set_color(c_white)
		draw_rectangle(0, 0, 1280, 960, 0)
		draw_sprite_ext(spr_end_game_3, -1, 0, 0, 4, 4, 0, c_white, 1)
		
		draw_set_halign(fa_center)
		draw_text(640, 80, "[PRESS ANY KEY TO END THE GAME]")
		
	}
	break
}