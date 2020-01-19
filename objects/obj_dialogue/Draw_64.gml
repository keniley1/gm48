/// @description Insert description here
// You can write your code in this editor
message_end = array_length_1d(message);

if (message_end > 0)
{
	// Text position
	tX = 5;
	tY = view_hview[0]-55;
	
	// Next message
	if (keyboard_check_pressed(ord("S")))
	{
		// If we still have more messages, go to next
		if (message_current < message_end - 1)
		{
			message_current++;
		}
		else
		{
			done = true;
		}
	}
	
	// Draw text
	draw_text(tX, tY, message[message_current]);
	
	// Draw portrait
	switch(portrait)
	{
		case "none":
		{
			break;
		}
		case "diest":
		{
			draw_sprite(sprite3, 0, 5, view_hview[0]-55);
			break;
		}
	}
}