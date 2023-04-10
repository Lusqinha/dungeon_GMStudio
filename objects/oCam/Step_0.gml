if (instance_exists(target)){
	
	x = lerp(x, target.x-cam_w/2, cam_vel)
	y = lerp(y, target.y-cam_h/2, cam_vel)
	
	x = clamp(x, 0, room_width-cam_w)	
	y = clamp(y, 0, room_height-cam_h)	
	
	camera_set_view_pos(view_camera[0],x,y)
	
}else{
	target = -1
}