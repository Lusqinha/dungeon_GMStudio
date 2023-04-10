/// @description Insert description here
// You can write your code in this editor

window_set_size(1280,720)


function walk()
{
if keyboard_check((ord("W"))){
	
	y-=SPEED

}else if keyboard_check(ord("S")){

	y+=SPEED
}

if keyboard_check(ord("A")){

	x-=SPEED
	image_xscale=-1

}else if keyboard_check(ord("D")){

	x+=SPEED
	image_xscale=1

}

if keyboard_check(vk_anykey){

sprite_index=sPlayer_anda

}else{

sprite_index=sPlayer

}
}

function check_life()
{

if LIFE <= 0{ room_restart() }

}