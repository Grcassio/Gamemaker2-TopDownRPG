/// @description Insert description here
// You can write your code in this editor

if(global.dialogo != true){
	right_key = keyboard_check(vk_right);
	left_key = keyboard_check(vk_left);
	up_key = keyboard_check(vk_up);
	down_key = keyboard_check(vk_down);
}

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//set sprite
mask_index = sprite[DOWN];
if yspd == 0
{	
	if xspd > 0 {face = RIGHT}
	if xspd < 0 {face = LEFT}
}

if xspd > 0 && face == LEFT{ face = RIGHT}
if xspd < 0 && face == RIGHT{ face = LEFT}

if xspd == 0
{
	if yspd > 0 {face = DOWN}
	if yspd < 0 {face = UP}
}

if yspd > 0 && face == UP{ face = DOWN}
if yspd < 0 && face == DOWN{ face = UP}


sprite_index = sprite[face];


//Colisões
if place_meeting(x+xspd, y, obj_wall) == true {
	xspd = 0;
}

if place_meeting(x, y + yspd, obj_wall) == true {
	yspd = 0;
}

//Move
x += xspd;
y += yspd;




//Se o player tiver parado mantem no primeiro
if xspd == 0 && yspd = 0
{
	image_index = 0;
}

//Conforme o personagem se move a caixa de colisão fica cada vez mais 
//"negativa" ai ele é desenhado na frente
depth = -bbox_bottom;



//registrar as posições anteriores do obj_player
if (x != xprevious or y != yprevious){

	for(var i = array_size-1; i > 0; i--){
	
		pos_x[i] = pos_x[i-1];
		pos_y[i] = pos_y[i-1];
		spr_record[i] = spr_record[i-1];
		img_index_record[i] = img_index_record[i-1];
	}
	
	pos_x[0] = x;
	pos_y[0] = y;
	spr_record[0] = sprite_index;
	img_index_record[0] = image_index;
	

}