/// @description Insert description here
// Boat parameter setting

v = 0 // velocity magnitude
theta = 0 // angle in radians of sail
phi = 0 // angle in radians of boat
v_theta = 0 // angular speed in radians/step

k_theta = 0.1 // multiplicative friction factor on theta
k = 0.01 // multiplicative friction factor on speed
k_phi = 0.05 // lerp parameter from phi to theta

v_max = 5 //max speed
v_min = 0.1 //min speed below which it locks to zero
v_theta_min = 0.1*global.pi/180 
v_theta_max = 5.0*global.pi/180
a_theta = 0.2*global.pi/180
accel = 0.1