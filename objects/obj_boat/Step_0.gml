/// @description Insert description here
// Movement code for boat

ahead_x = x + cos(theta)*32
ahead_y = y - sin(theta)*32

if keyboard_check(vk_up) and abs(v) < v_max and place_empty(ahead_x, ahead_y, obj_rock)
{
	v += accel * global.dt
}

if keyboard_check(vk_down) and abs(v) > v_min
{
	v += -accel * global.dt
}

if abs(v) < v_min
{
	v = 0	
}
else
{
	v *= 1 - k
}
	
if keyboard_check(vk_left) and abs(v_theta) < v_theta_max
{
	v_theta += a_theta * global.dt
	if abs(v) > v_min
	{
		v *= 1 - k
	}
}
	
if keyboard_check(vk_right) and abs(v_theta) < v_theta_max
{
	v_theta += -a_theta * global.dt
	if abs(v) > v_min
	{
		v *= 1 - k
	}
}
	
if abs(v_theta) < v_theta_min
{
	v_theta = 0
}
else
{
	v_theta *= 1 - k_theta
}

theta += v_theta * global.dt
phi = lerp(phi, theta, k_phi)

v_x = v * cos(phi)
v_y = - v * sin(phi)