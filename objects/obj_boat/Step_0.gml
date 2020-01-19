/// @description Insert description here
// Movement code for boat

if keyboard_check(vk_up) and abs(v) < v_max
	{
		v += accel * global.dt
	}
	
if keyboard_check(vk_down) and abs(v) < v_max
	{
		v += -accel * global.dt
	}
	
if keyboard_check(vk_left) and abs(v) > v_min and abs(v_theta) < v_theta_max
	{
		v_theta += a_theta * global.dt	/ power(abs(v), turn_power_coeff)
		v *= 0.9
	}
	
if keyboard_check(vk_right) and abs(v) > v_min and abs(v_theta) < v_theta_max
	{
		v_theta += -a_theta * global.dt / power(abs(v), turn_power_coeff)
		v *= 0.9
	}
	
if abs(v) < v_min
	{
		v = 0	
	}
	else
	{
		v += -v * power(abs(v), drag_power_coeff - 1) * k * global.dt	
	}
	
if abs(v_theta) < v_theta_min
	{
		v_theta = 0	
	}
	else
	{
		v_theta += -v_theta * k_theta * global.dt
	}
	
x += v * cos(theta) * global.dt
y += - v * sin(theta) * global.dt
theta += v_theta * global.dt