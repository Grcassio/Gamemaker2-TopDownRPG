/// @description Insert description here
// You can write your code in this editor
/*
if (keyboard_check_pressed(vk_space)){
	
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
*/

//Movimentação para um menu simples de 4 opções
//Por enquanto é o planejado pros menu de ações
right_key = keyboard_check_pressed(vk_right);
left_key = keyboard_check_pressed(vk_left);
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);

pos += (right_key - left_key) 
yPos = (down_key - up_key) 

if(yPos == 1){
	pos += 2;
}

if(yPos == -1){
	pos -= 2;
}

if pos >= array_length(text) {pos = 0}
if pos < 0 {pos = array_length(text) - 1}

//Para saber se algo aconteceu
action_happened = false;

