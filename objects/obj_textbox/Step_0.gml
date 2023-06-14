/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("Z"))){
	
	if(charCount < string_length(text[page])){ //Pra pular o texto quando aperta espaço
		charCount = string_length(text[page]);
	}else if( page + 1 < array_length(text)){ //Pula a pagina
		page += 1;
		charCount = 0;
	}else{
		//Pra esperar um segundo e não começar um dialogo infinito
		global.dialogo = false;
		instance_destroy(); 
		creator.alarm[0] = 1;
	}
	
	
	
}