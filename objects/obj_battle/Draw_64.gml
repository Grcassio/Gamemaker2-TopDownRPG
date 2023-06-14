/// @description 
// You can write your code in this editor


//Eu somei 2 pra pular os 2 primeiros pixeis que ficam vazando na barra
//E subtrai 4 pra ajeitar o fim da barra
draw_set_font(fnt_text);
draw_text_ext_colour(troublebar_x - 70, troublebar_y, "TP " + string(controller.enemy_tp) + "/10", string_height("TP"), 200, c_white, c_white, c_white, c_white, 1);
draw_sprite_stretched(spr_trouble_bar, 0, troublebar_x + 2, troublebar_y, (controller.enemy_tp/10) * troublebar_width - 4, troublebar_height);
draw_sprite(spr_trouble_bar_border, 0, troublebar_x, troublebar_y);