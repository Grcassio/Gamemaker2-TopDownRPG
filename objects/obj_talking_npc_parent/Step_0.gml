/// @description Insert description here
// You can write your code in this editor

retFunc = scr_SimpleAnimationNpcCanTalk(obj_player, self);
//Aqui por enquanto esse and é uma solução temporária, acredito que será necessário criar um script
//que verifique 1 - Posição do sprite npc 2 - Posição do sprite player 3 - Retorna uma confirmação se eles vão poder falar
//4 Retorna o image_index correto para que o npc mude de posição pra olhar pro player



//if(place_meeting(x, y, obj_player) and canTalk == true){
if(retFunc[0] == true){

	vx = camera_get_view_x(view_camera[0]);
	vy = camera_get_view_y(view_camera[0]);
	
	if(keyboard_check_pressed(ord("Z"))){
		global.dialogo = true;
		image_index = retFunc[1];
		if(myTextbox == noone){
			myTextbox = instance_create_layer(vx + 32, vy + 143, "Text", obj_textbox);
			myTextbox.creator = self;
			myTextbox.text = conversa;
		}
	}

}else{
	
	if(myTextbox != noone){
		
		instance_destroy(myTextbox);
		myTextbox = noone;
	}
}




