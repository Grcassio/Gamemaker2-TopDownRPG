//draw menu background

// a ideia de dividir pelo sprite_width e height é que por exemplo
// Se você quer um sprite de tamanho 40, então quer dizer que você quer um 2 vezes maior se for de 20
// então se width = 40 e sprite_width 20  width/sprite_width = 2 , ai o negocio vai ficar 2x maior
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

if(room == rm_battle){
	draw_set_font(fnt_text_battle);
}else{
	draw_set_font(fnt_text);
}


if(charCount < string_length(text[page])){
	charCount += 1
}

textPart = string_copy(text[page], 1, charCount);

//draw_text_ext(x + xBuffer ,y + yBuffer , textPart, string_height(text[0]), width - xBuffer);

draw_text_ext_colour(x + xBuffer ,y + yBuffer , textPart, string_height(text[0]), width - xBuffer, c_white, c_white, c_white, c_white, 1);


//Esse código foi de uma tentativa frustrada de fazer um main menu, mas tem coisas uteis aqui
//draw_text_ext( x + (sprite_width * (width/sprite_width)/2) ,y + (sprite_height * (height/sprite_height)/2)/4 + 20 , options[i], string_height(options[i]), width);