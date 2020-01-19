/// @description Insert description here
// Movement code for boat

animation_key += 1

switch state
{
	case moving:
	{
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

		if abs(v) <= v_min
		{
			v = 0
			
			if keyboard_check_pressed(vk_space) and abs(v_theta) < v_theta_min
			{
				state = fishing
			}
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
	}
	break
	
	case fishing:
	{
		if keyboard_check_pressed(vk_space)
		{
			state = moving	
		}
	}
	break
}


// Check if boat is within radius of setpiece object
// If it is, set find_setpiece_object == true
for(var i=0; i<instance_number(obj_setpiece); i++) 
{
	var inst = instance_find(obj_setpiece,i);
	if (point_distance(x, y, inst.x, inst.y) < setpiece_radius) 
	{
		find_setpiece_object = true
	} 
	else
	{
		find_setpiece_object = false
	}
}