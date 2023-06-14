//Esse script aqui serve pra  trocar a animação correta do personagem conforme a direção que voce for falar com ele
//Ele verifica se o npc colidiou com o player na esq,dir,cima,baixo e retorna se ele está em uma posição em que falar é possível (se o seu personagem tiver mt longe n vai aceitar)
//E também ele retorna o frame correto do bichinho, se ele vai ter q olhar pra cima ou pra baixo, e o codigo obj_talking_npc_parent usa essas info pra setar o frame e permitir que o dialogo aconteça :)

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_SimpleAnimationNpcCanTalk(_objPlayer, _objNpc){
	
	canTalk = false;
	npcIndexAnimation = 0;
	
	//Colisão em cruz
	collidedRight = _objNpc.place_meeting(_objNpc.x + 16, _objNpc.y, obj_player);
	collidedLeft = _objNpc.place_meeting(_objNpc.x - 16, _objNpc.y, obj_player);
	collidedUp = _objNpc.place_meeting(_objNpc.x, _objNpc.y - 10, obj_player);
	collidedDown = _objNpc.place_meeting(_objNpc.x, _objNpc.y + 10, obj_player);
	
	
	//Verifica se colidiu, onde colidiu e qual era o sprite do player quando colidiu, ai seta o index da animação
	//Lembrando que isso são para NPC's onde temos animações de 4 frames
	//Quando forem criados npc's mais elaborados com mais animações vai ter que acontecer uma troca de sprite e vai ser retornado o sprite
	//Mas pra isso é só adaptar o código pra trocar o sprite com a animação, e ver pra ele mudar o image_index
	//Meudeus do ceu isso foi chato de fazer D:
	
	
	switch (_objPlayer.sprite_index){
	
		case spr_player_down:
			if(collidedUp){
				canTalk = true;
				npcIndexAnimation = UP;
			}

		break;
					
		case spr_player_up:
			if(collidedDown){
				canTalk = true;
				npcIndexAnimation = DOWN;
			}
		break;

		case spr_player_right:
			if(collidedLeft){
				canTalk = true;
				npcIndexAnimation = LEFT;
			}
		break;
		
		case spr_player_left:
			if(collidedRight){
				canTalk = true;
				npcIndexAnimation = RIGHT;
			}
		break;
					
	}			
	
	
	return [canTalk , npcIndexAnimation];


	
}