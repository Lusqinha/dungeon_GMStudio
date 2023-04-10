/// @description Insert description here
// You can write your code in this editor

window_set_size(800,600)

velh = 0
velv = 0
dir = 0




function walk(){
	
	var tc = keyboard_check(ord("W"))
	var tb = keyboard_check(ord("S"))
	var te = keyboard_check(ord("A"))
	var td = keyboard_check(ord("D"))
	
	dir = point_direction(0, 0, td - te, tb - tc)
	
	var tecla = td - te != 0 || tb - tc !=0
	
	velh = lengthdir_x(SPEED*tecla, dir)
	velv = lengthdir_y(SPEED*tecla, dir)
	
	
	x+= velh
	y+= velv
	
	
	
}