/// @description Insert description here
// You can write your code in this editor
//Reverse all velocities
v = -v
v_x = -v_x
v_y = -v_y
//Undo next position update (end step) before it happens
x += v_x * global.dt
y += v_y * global.dt
