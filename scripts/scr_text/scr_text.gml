//scr_text("Text", speed, x, y, sprite)

//txt = instance_create(argument2, argument3,obj_text);
txt = instance_create_depth(argument2, argument3, 2, obj_text);
with (txt)
{
	padding = 16;
	maxlength = view_wview[0];
	text = argument0;
	spd = argument1;
	font = fnt1;
	
	text_length = string_length(text);
	font_size = font_get_size(font);
	
	text_width = string_width_ext(text, font_size+(font_size/2), maxlength);
	text_height = string_height_ext(text, font_size+(font_size/2), maxlength);
	
	boxwidth = text_width + (padding*2);
	boxheight = text_height + (padding*2);
}
