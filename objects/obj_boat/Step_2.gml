/// @description Insert description here
// Update position based on physics
switch state
{
	case moving:
	{
		x += v_x * global.dt
		y += v_y * global.dt
	}
}
