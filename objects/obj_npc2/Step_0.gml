/// @description Insert description here
// You can write your code in this editor

event_inherited();

//Acabou a conversa desse npc então ele entra na sala de batalha rm_battle
//Crio um objeto pra fazer o warp porque eu não quero que o npc persista
if(isFinished == true and BattleBegin = false){
	scr_StartBattle(self);
	BattleBegin = true;
}

