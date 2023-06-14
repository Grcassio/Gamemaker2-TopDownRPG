/// @description Insert description here
// You can write your code in this editor


switch (state) {
    case states.battle_start:
        //32 e 5 pra por o texto em cima
		vx = camera_get_view_x(view_camera[0]) + 32;
		vy = camera_get_view_y(view_camera[0]) + 355;
	
		if(StartTextBox == noone){
			global.dialogo = true;
			StartTextBox = instance_create_layer(vx, vy, "Text", obj_textbox);
			StartTextBox.creator = self;
			StartTextBox.text = text_begin;
			
		}

		if(global.dialogo == false){
			state = states.player_choose;
		}

        break;
    case states.player_choose:
	
		//Mensagem pro player
		if(textBox == noone){
			var text_aux;
			text_aux[0] = "Eai o que voce e seus amigos irao fazer?"
			textBox = instance_create_layer(vx, vy, "Text", obj_no_action_textbox);
			textBox.creator = self;
			textBox.text = text_aux;
			textBox.height = camera_get_view_height(view_camera[0])/10;
		}
		
		//Navegação no menu
		//Lembre que a função é keyboard_check_pressed e não só keyboard_check
		left_key = keyboard_check_pressed(vk_left);
		right_key = keyboard_check_pressed(vk_right);
		
		battle_menu_pos += right_key - left_key;
		
		if battle_menu_pos >= array_length(menu) {battle_menu_pos = 0}
		if battle_menu_pos < 0 {battle_menu_pos = array_length(menu) - 1}
		
		for(i = 0; i < array_length(menu); i++){
			menu[battle_menu_pos].image_index = 1;		
			
			if(i != battle_menu_pos){
				menu[i].image_index = 0;
			}	
		}
		
		
		//Opção de batalha
		if(keyboard_check_pressed(ord("Z"))){
			switch (battle_menu_pos) {
			    case buttons.fight:
			        // code here
					instance_destroy(textBox);
					textBox = noone;
					state = states.player_choose_fight;
			        break;
				case buttons.talk:
			        // code here
					instance_destroy(textBox);
					textBox = noone;
					state = states.player_choose_talk;
			        break;
				case buttons.bag:
			        // code here
					instance_destroy(textBox);
					textBox = noone;
					state = states.player_choose_item;
			        break;
				case buttons.run:
					instance_destroy(textBox);
					textBox = noone;
					state = states.player_choose_run;
			        // code here
			        break;
			    default:
			        // code here
			        break;
			}
		
		}
		
		
		
		//show_debug_message(battle_menu_pos);
        // code here
        break;
    case states.player_choose_fight:
		
		if(player_action_box == noone){

			player_action_box = instance_create_layer(vx , vy, "Text", obj_action_textbox);
			player_action_box.creator = self;
			player_action_box.text = player_skills;	
		}
		
		if(keyboard_check_pressed(ord("X"))){
			state = states.player_choose;
			instance_destroy(player_action_box);
			player_action_box = noone;
		}
		
		//Ação é usada
		if(keyboard_check_pressed(ord("Z"))){

			player_current_actions = player_skills;
			state = states.enemy_talking;
		
		}

		
        break;
    case states.player_choose_talk:
	
		if(player_action_box == noone){
			//global.dialogo = true;
			player_action_box = instance_create_layer(vx , vy, "Text", obj_action_textbox);
			player_action_box.creator = self;
			player_action_box.text = player_talk;
		}
		
		if(keyboard_check_pressed(ord("X"))){
			state = states.player_choose;
			instance_destroy(player_action_box);
			player_action_box = noone;
		}
		
		//voce diz algo é usado
		if(keyboard_check_pressed(ord("Z"))){
			
			//Inimigo perde trouble points
	
			player_current_actions = player_talk;
			state = states.enemy_talking;
		
		}
		
		
        break;
    case states.player_choose_item:
		
		//Cria caixa de opções pro player escolher
		if(player_action_box == noone){
			//global.dialogo = true;
			player_action_box = instance_create_layer(vx , vy, "Text", obj_action_textbox);
			player_action_box.creator = self;
			player_action_box.text = player_itens;
		}
		
		//Volta pro menu de ações/itens/falas/fuga
		if(keyboard_check_pressed(ord("X"))){
			state = states.player_choose;
			instance_destroy(player_action_box);
			player_action_box = noone;
		}
		
		//Item é usado
		if(keyboard_check_pressed(ord("Z"))){
			player_current_actions = player_itens;
			
			state = states.enemy_talking;
		
		}

        break;
    case states.player_choose_run:
		state = states.battle_end;
        // code here
        break;
	case states.player_action:
        // code here
        break;
    case states.enemy_reaction:
        // code here
		show_debug_message(used_item);
		var value = ds_map_find_value(controller.enemy_damage_map, used_item);
		show_debug_message(value);
		controller.enemy_tp = controller.enemy_tp - value;
		if(controller.enemy_tp <= 0 ) {	
			state = states.enemy_end;
		}else{
			state = states.player_choose;
		}
		
        break;
	case states.enemy_talking:
	
        //Pega posição da ação do obj_action_textbox e seta o valor no mapa de vezes usados o item
		if(player_action_box != noone){
			pos_action = player_action_box.pos;
			used_item = player_current_actions[pos_action];
			
		
			//Adiciona um a quantidade de vezes que o item foi usado
			if(ds_map_exists(map_times_used, used_item) == false){
				ds_map_add(map_times_used, used_item, 0);
			}else{
				var value = ds_map_find_value(map_times_used, used_item);
				
				//Checa se as falas acabaram e fica repetindo a ultima
				if(value < array_length(item_lines) - 1){
					ds_map_set(map_times_used, used_item, value + 1);
				}else{
					ds_map_set(map_times_used, used_item, value);
				}
			}
			
			//Encontra no mapa de falas utilizando a string pega do obj_action_textbox
			item_lines = ds_map_find_value(controller.enemy_fight_lines, used_item);


			
			//Destroi a caixa de itens pra acontecer a reação do inimigo
			instance_destroy(player_action_box);
			player_action_box = noone;
		}
		
	
		//Roda o dialogo 
		if(textBox == noone){
				
			//Busca no mapa de vezes usadas o item para sabermos qual fala passar na tela
			var value = ds_map_find_value(map_times_used, used_item);
			var array_aux;
			array_aux[0] = item_lines[value];
			global.dialogo = true;
			textBox = instance_create_layer(vx, vy, "Text", obj_textbox);
			textBox.creator = self;
			textBox.text = array_aux;
			
		}
		


		if(global.dialogo == false){
			state = states.enemy_reaction;
		}
		
        break;
    case states.enemy_end:
        // code here

		if(textBox == noone){
			var ending_lines = ds_map_find_value(controller.enemy_fight_lines, "Ending");
			global.dialogo = true;
			textBox = instance_create_layer(vx, vy, "Text", obj_textbox);
			textBox.creator = self;
			//show_debug_message(ending_lines);
			textBox.text = ending_lines;
			textBoxCreated = true;
		}
		
		if(global.dialogo == false){
			show_debug_message("estou aq)");
			state = states.battle_end;
			textBoxCreated = false;
		}
	
        break;
    case states.battle_end:

		warp = instance_create_depth(x, y, depth - 1000, obj_warp_controller);
		warp.newRoom = controller.player_last_room
		warp.newX = controller.player_last_xPosition;
		warp.newY = controller.player_last_yPosition;
		warp.quit_battle = true;
		//state = states.enemy_end;
		
		// code here
        break;

    default:
        // code here
        break;
}