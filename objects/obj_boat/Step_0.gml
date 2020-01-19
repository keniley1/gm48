/// @description Insert description here
// Movement code for boat

if keyboard_check(vk_up)
	{
		v += accel * global.dt
	}
	
if keyboard_check(vk_down)
	{
		v += -accel * global.dt
	}
	
if keyboard_check(vk_left)
	{
		theta += dtheta * global.dt	
	}
	
if keyboard_check(vk_right)
	{
		theta += - dtheta * global.dt	
	}
	
if abs(v) < 0.1
	{
		v = 0	
	}
	else
	{
		v += -v * k * global.dt	
	}
	
x += v * cos(theta) * global.dt
y += - v * sin(theta) * global.dt