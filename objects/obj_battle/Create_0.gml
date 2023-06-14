/// @description Insert description here
// You can write your code in this editor

enum states{
	battle_start,
	player_choose,
	player_choose_fight,
	player_choose_talk,
	player_choose_item,
	player_choose_run,
	player_action,
	enemy_talking,
	enemy_reaction,
	enemy_end,
	battle_end

}

enum buttons{
	fight,
	talk,
	bag,
	run
}



instance_deactivate_object(obj_player);
text_begin = obj_battle_controller.text_begin;
state = states.battle_start;
StartTextBox = noone;
alarm[1] = 60;

battle_menu_pos = 0;

menu = [obj_battle_button_fight,
obj_battle_button_talk,
obj_battle_button_bag,
obj_battle_button_run,
]




//Player data pra luta
player_skills = obj_battle_controller.player_skills_controller
player_talk = obj_battle_controller.player_talk_controller 
player_itens = obj_battle_controller.player_itens_controller
player_itens_quantity = obj_battle_controller.player_itens_quantity_controller 
player_current_actions = noone;

show_debug_message(player_skills[1]);


player_action_box = noone;

//Controlador para acesso de alguns dados que vieram do mundo para a sala de batalha
controller = obj_battle_controller;


//Barras a serem exibidas
troublebar_width = 155;
troublebar_height = 18;
troublebar_x = (room_width/2) - (troublebar_width/2);
troublebar_y = 270;

//Variavel de posição para olharmos no vetor de ações/itens/falas
pos_action = 0;

textBox = noone;

//Mapa de vezes usadas para ações
map_times_used = ds_map_create();

//Item escolhido
used_item = noone;





