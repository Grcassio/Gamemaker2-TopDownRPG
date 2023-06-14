/// @description Insert description here
// You can write your code in this editor

if ( room != newRoom){
	fadeLevel += 0.015;
	
	if (fadeLevel >= 1){
		room_goto(newRoom);
		
		//Essa parte do warp controller só serve caso você esteja saindo de uma luta
		//Ela pega a ultima posição do personagem que esta salva no controller 
		//Também o ultimo sprite_index do obj_player e seta tudo antes de voltar pra sala onde a luta se iniciou
		if(quit_battle == true){
			instance_activate_object(obj_player);
			obj_player.sprite_index = obj_battle_controller.player_last_sprite_index;
			camera_set_view_pos(view_camera[0],  obj_battle_controller.player_last_camera_xPosition, obj_battle_controller.player_last_camera_yPosition);	
			instance_destroy(obj_battle);
			instance_destroy(obj_battle_controller);
		}
		obj_player.x = newX;
		obj_player.y = newY;
		
	}
	
}else{
	fadeLevel -= 0.015;
}

if( fadeLevel <=0){
	instance_destroy();
}