/// @description Insert description here
// You can write your code in this editor

x = obj_player.pos_x[record];
y = obj_player.pos_y[record];


switch(obj_player.spr_record[record]){

	case spr_player_right:
		sprite_index = sprite[RIGHT];
	break;
	case spr_player_left:
		sprite_index = sprite[LEFT];
	break;
	case spr_player_up:
		sprite_index = sprite[UP];
	break;
	case spr_player_down:
		sprite_index = sprite[DOWN];
	break;
	
}

image_index  = obj_player.img_index_record[record];

if(obj_player.xspd == 0 and obj_player.yspd == 0){
	image_index = 0;
}
