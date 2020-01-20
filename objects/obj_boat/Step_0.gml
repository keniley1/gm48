/// @description Insert description here
// Movement code for boat

animation_key += 1
nearest_setpiece = instance_nearest(x, y, obj_setpiece)

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

		if keyboard_check(vk_down) and v > v_min
		{
			v += -accel * global.dt
		}

		if abs(v) <= v_min
		{
			v = 0
			
			if keyboard_check_pressed(vk_space) and abs(v_theta) < v_theta_min
			{
				state = fishing_extend
				fishing_extend_countdown = fishing_extend_countdown_time
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
	
	case fishing_extend:
	{
		fishing_extend_countdown += -1
		
		//TODO: MAKE SURE IT'S ANIMATED
		
		if fishing_extend_countdown <= 0
		{
			state = fishing
			fishing_countdown = fishing_countdown_time
		}
	}
	break
	
	case fishing:
	{
		fishing_countdown += -1
		
		//TODO: MAKE SURE IT'S ANIMATED
		
		if fishing_countdown <= 0
		{
			if  distance_to_object(nearest_setpiece) < setpiece_radius and nearest_setpiece.has_item
			{
				state = item_display
			}
			else
			{
				state = moving	
			}
		}
	}
	break
	
	case item_display:
	{
		show_debug_message("ITEM_DISPLAY")
		
		if keyboard_check(ord("Y"))
		{
			//TODO KEEP ITEM, ADD TO LIST, REMOVE FROM LOCATION, CHECK VICTORY CONDITION
			state = moving
			show_debug_message("PRESSED")
			
			time_capsule.items[time_capsule.num_items] = nearest_setpiece.sprite
			time_capsule.num_items += 1
			
			nearest_setpiece.has_item = false
			
			if time_capsule.num_items >= time_capsule.max_num_items
			{
				state = end_game_1
			}
		}
		
		if keyboard_check(ord("N"))
		{
			state = moving
			show_debug_message("PRESSED")
		}
	}
	break
	
	case end_game_1:
	{
		if keyboard_check_pressed(vk_anykey)
		{
			state = end_game_2
		}
	}
	break
	
	case end_game_2:
	{
		if keyboard_check_pressed(vk_anykey)
		{
			state = end_game_3
		}
	}
	break
	
	case end_game_3:
	{
		if keyboard_check_pressed(vk_anykey)
		{
			game_end()
		}
	}
	break
	
	case menu:
	{
		if keyboard_check_pressed(vk_anykey)
		{
			state = moving
		}
	}
}


// Check if boat is within radius of setpiece object
// If it is, set find_setpiece_object == true
for(var i=0; i<instance_number(obj_setpiece); i++) 
{
	var inst = instance_find(obj_setpiece,i);
	if (point_distance(x, y, inst.x, inst.y) < setpiece_radius) 
	{
		find_setpiece_object = true
		show_debug_message("TRUE")
	} 
	else
	{
		find_setpiece_object = false
		show_debug_message("FALSE")
	}
}