//draw menu background

// a ideia de dividir pelo sprite_width e height é que por exemplo
// Se você quer um sprite de tamanho 40, então quer dizer que você quer um 2 vezes maior se for de 20
// então se width = 40 e sprite_width 20  width/sprite_width = 2 , ai o negocio vai ficar 2x maior
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);
draw_set_font(fnt_text_battle);



if(charCount < string_length(text[page])){
	charCount += 1
}

textPart = string_copy(text[page], 1, charCount);

//draw_text_ext(x + xBuffer ,y + yBuffer , textPart, string_height(text[0]), width - xBuffer);
var buffer = 0;



for(var i = 0; i < array_length(text); i++){
	var _c = c_white;

	if (pos == i) {_c = c_yellow}
	
	if(i > 1){
		buffer = 50;
	}
	
	if( i % 2 != 0){
		draw_text_ext_colour(x + xBuffer + optionBuffer ,y + yBuffer + buffer , text[i], string_height(text[0]), width - xBuffer, _c, _c, _c, _c, 1);
	}else{
		draw_text_ext_colour(x + xBuffer ,y + yBuffer + buffer , text[i], string_height(text[0]), width - xBuffer, _c, _c, _c, _c, 1);
	}
}

