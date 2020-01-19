/// @description Insert description here
// Movement code for boat

if keyboard_check(vk_up) and abs(v) < v_max
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
	v *= 0.99
}
	
if keyboard_check(vk_left) and abs(v_theta) < v_theta_max and abs(v) > v_min
{
	v_theta += a_theta * global.dt
	if abs(v) > v_min
	{
		v *= 0.99
	}
}
	
if keyboard_check(vk_right) and abs(v_theta) < v_theta_max and abs(v) > v_min
{
	v_theta += -a_theta * global.dt
	if abs(v) > v_min
	{
		v *= 0.99	
	}
}
	
if abs(v_theta) < v_theta_min
{
	v_theta = 0
}
else
{
	v_theta *= 0.9
}

theta += v_theta * global.dt
phi = lerp(phi, theta, k_phi)
	
x += v * cos(phi) * global.dt
y += - v * sin(phi) * global.dt
