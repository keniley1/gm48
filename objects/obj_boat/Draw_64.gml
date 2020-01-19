/// @description Insert description here
// You can write your code in this editor
switch state
{
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
		text = "This is a test string. Press Y to put the item in your time capsule, or press N to throw it back."
		draw_text(640, 120, text)

		draw_sprite_ext(sprite3, -1, 640, 640, 4, 4, 0, c_white, 1)
	}
}