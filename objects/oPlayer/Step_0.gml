/// @description Ação p/ frame
// You can write your code in this editor
if keyboard_check(vk_numpad8){
	
	y-=SPEED

}else if keyboard_check(vk_numpad5){

	y+=SPEED
}

if keyboard_check(vk_numpad4){

	x-=SPEED
	image_xscale=-1

}else if keyboard_check(vk_numpad6){

	x+=SPEED
	image_xscale=1

}

if keyboard_check(vk_anykey){

sprite_index=sPlayer_anda

}else{

sprite_index=sPlayer

}