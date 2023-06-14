/// @description Insert description here
// You can write your code in this editor
xspd = 0;
yspd = 0;

move_spd = 1;

sprite[RIGHT] = spr_player_right;
sprite[UP] = spr_player_up;
sprite[LEFT] = spr_player_left;
sprite[DOWN] = spr_player_down;

face = DOWN;

#region itens do player
//Coisas que o player tem que vão ser mostrados no modo batalha
player_skills[0] = "Chupar cana";
player_skills[1] = "Assobiar";
player_skills[2] = "Sonim";
player_skills[3] = "Olhar feio";

player_talk[0] = "Elogiar";
player_talk[1] = "Ofender";

player_itens[0] = "Pacoquita"
player_itens[1] = "Goiaba"
player_itens[2] = "Cortador de unha"

player_itens_quantity[0] = 1;
#endregion

#region Party follows you
//Pra party te seguir
array_size = 94; //Não sei porque isso é 94, não precisa ser, mas enfim ta assim

//preencher o vetor de marcar as posições
for(var i = array_size-1; i > 0; i--){
	pos_x[i] = x;
	pos_y[i] = y;
	spr_record[i] = sprite_index;
	img_index_record[i] = image_index;
}
	pos_x[0] = x;
	pos_y[0] = y;

#endregion 