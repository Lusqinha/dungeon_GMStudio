script_execute(key_input())

// move
xaxis = (k_right - k_left);

yaxis = (k_down - k_up);

// pega direcao

var dir = point_direction(0, 0, xaxis, yaxis)

// pega tamanho

if (xaxis == 0) and (yaxis == 0){
len = 0
}else{
len = SPEED;
}


// pega variavel de speed

hspd = lengthdir_x(len, dir)

vspd = lengthdir_y(len, dir)


if (instance_exists(oWallCol)){
#region 

// Colision H

var is_col_h = place_meeting(x+hspd, y, oWallCol)

if is_col_h{
	while !is_col_h{
		x+=sign(hspd)
	}
hspd = 0
}

x += hspd



// Colision V

var is_col_v = place_meeting(x, y+vspd, oWallCol)

if is_col_v{
	while !is_col_v{
		y+=sign(vspd)
	}
vspd = 0
}

y += vspd

#endregion
}