/// @description Insert description here
// Boat parameter setting

//Drawing parameters
animation_key = 0 //keyframe for all boat animating purposes - constantly increases by 1/step
ebb_period = 300
ebb_scaling_factor = 0.01
ebb_rotate_factor = 1.5 // degrees
ebb_rotate_period = 2050

v = 0 // velocity magnitude
theta = 0 // angle in radians of boat
phi = 0 // angle in radians of motor
v_theta = 0 // angular speed in radians/step

k_theta = 0.1 // multiplicative friction factor on theta
k = 0.01 // multiplicative friction factor on speed
k_phi = 0.05 // lerp parameter from phi to theta
mass = 1

v_max = 2 //max speed
v_min = 0.02 //min speed below which it locks to zero
v_theta_min = 0.1*global.pi/180 //min turning speed below which it locks to zero
v_theta_max = 3.0*global.pi/180 //max turning speed
a_theta = 0.2*global.pi/180 //turning acceleration rate
accel = 0.04 //velocity acceleration rate

// Setpiece options
setpiece_radius = 100
find_setpiece_object = false

//State Machine
moving = 1
fishing = 2
state = moving