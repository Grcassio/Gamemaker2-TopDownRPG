/// @description Insert description here
// You can write your code in this editor

//Texto do ínicio de batalha
text_begin = noone;


//Coisas que o player tem que vão ser mostrados no modo batalha
player_skills_controller = obj_player.player_skills;
player_talk_controller = obj_player.player_talk;
player_itens_controller = obj_player.player_itens;
player_itens_quantity_controller = obj_player.player_itens_quantity;

//Coisas para voltar a sala
player_last_xPosition = 0;
player_last_yPosition = 0;
player_last_room = 0;
player_last_sprite_index = 0;
player_last_camera_xPosition = 0;
player_last_camera_yPosition = 0;


//Pra fazer o warp de volta
check_battle_finished = false;
warp = noone;

//Dados do inimigo
enemy_tp = 0;
enemy_fight_lines = ds_map_create();
enemy_damage_map = ds_map_create();