/// @description Update camera

// Update destination
if (instance_exists(obj_boat)) 
{
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
