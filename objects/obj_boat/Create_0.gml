/// @description Insert description here
// Boat parameter setting

//Drawing
animation_key = 0
ebb_period = 250
ebb_scaling_factor = 0.025
ebb_rotate_factor = 2 // degrees
ebb_rotate_period = 300

v = 0 // velocity magnitude
theta = 0 // angle in radians of sail
phi = 0 // angle in radians of boat
v_theta = 0 // angular speed in radians/step

k_theta = 0.1 // multiplicative friction factor on theta
k = 0.01 // multiplicative friction factor on speed
k_phi = 0.05 // lerp parameter from phi to theta
mass = 1

v_max = 5 //max speed
v_min = 0.05 //min speed below which it locks to zero
v_theta_min = 0.1*global.pi/180 
v_theta_max = 5.0*global.pi/180
a_theta = 0.2*global.pi/180
accel = 0.07

// Setpiece options
setpiece_radius = 100
find_setpiece_object = false

//State Machine
moving = 1
fishing = 2
state = moving