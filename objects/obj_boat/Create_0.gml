/// @description Insert description here
// Boat parameter setting

v = 0 // velocity magnitude
theta = 0 // angle in radians
v_theta = 0 // angular speed in radians/step


k = 0.01 // coefficient of friction
k_theta = 0.1 //coefficient of friction caused by turning
drag_power_coeff = 2
turn_power_coeff = 0.25

v_max = 5
v_min = 0.5
v_theta_min = 0.1*global.pi/180
v_theta_max = 5.0*global.pi/180
a_theta = 0.5*global.pi/180
accel = 0.5