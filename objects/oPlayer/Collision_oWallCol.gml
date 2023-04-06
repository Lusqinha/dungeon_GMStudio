/// @description Objeto p/ colisão assistida
// You can write your code in this editor

// evento de colisão no objeto do personagem
if (place_meeting(x + hspeed, y, oWallCol )) // se estiver tocando o objeto da parede à frente
{
   hspeed = 0; // impedir que o personagem se mova na horizontal
}
