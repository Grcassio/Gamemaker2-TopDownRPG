// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_StartBattle(_objNpc){

	objBatalhaController = instance_create_layer(vx + 32, vy + 143, "Instances", obj_battle_controller);
	
	//seta data para a luta no objeto de batalha
	objBatalhaController.text_begin = _objNpc.conversaLuta;

	objBatalhaController.player_last_xPosition = obj_player.x;
	objBatalhaController.player_last_yPosition = obj_player.y;
	show_debug_message(objBatalhaController.player_last_xPosition)
	objBatalhaController.player_last_room = room;
	objBatalhaController.player_last_sprite_index = obj_player.sprite_index;
	objBatalhaController.player_last_camera_xPosition = camera_get_view_x(view_camera[0]);
	objBatalhaController.player_last_camera_yPosition = camera_get_view_y(view_camera[0]);
	
	
	//faz o warp
	warp = instance_create_depth(x, y, depth - 1000, obj_warp_battle);
	warp.newRoom = rm_battle;

	
	//Dados do inimigo na batalha
	objBatalhaController.enemy_tp = _objNpc.tp;
	objBatalhaController.enemy_fight_lines  = _objNpc.fight_lines;
	objBatalhaController.enemy_damage_map = _objNpc.damage_map;

}