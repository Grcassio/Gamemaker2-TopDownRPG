/// @description Insert description here
// You can write your code in this editor
event_inherited();

image_speed = 0;

myTextbox = noone;
BattleBegin = false;

conversa[0] = "- Uai so deixa eu olhar pra la";
conversa[1] = "- nao vai deixar e?";
conversa[2] = "- Cai pra dentro entao fiote de cruz credo";

conversaLuta[0] = "* QUEIMA QUENGARAL!"


tp = 10; //Trouble points

//Chupar Cana
chuparCana_lines[0] = "* Voce chupou cana, qual foi a utilidade disso?";
chuparCana_lines[1] = "* Voce sente que esta com hipoglicemia, e melhor parar!";

//Assobiar
assobiar_lines[0] = "* Seu assobio constrangeu o inimigo que feio ò.ó";
assobiar_lines[1] = "* voce assobia aquela musica do scorpions, o adversario parece gostar da musica";

//Sonim
sonim_lines[0] = "* Voce tira um soninho legal, nao parece ter efeito no adversario";
sonim_lines[1] = "* Acho que dormir nao resolve essa situacao";

//Olhar feio
olharFeio_lines[0] = "*O inimigo parece ter se irritado ainda mais";

//Pacoquita
pacoquita_lines[0] = "- Cara eu gosto muito desse doce!";
pacoquita_lines[1] = "- Que deleite!";

//Goiaba
goiaba_lines[0] = "- Ihw ta com bicho essa goiaba";
goiaba_lines[1] = "- Mas eu prefiro caju";

//Cortador de unha
cortadorDeUnha_lines[0] = "- Muito obrigado eu ja cortei minhas unhas hoje";

//Elogiar
elogiar_lines[0] = "Eu sei eu sei, menos por favor";

//Ofender
ofender_lines[0] = "Feio é você!";

//Fim, fala quando a luta acaba
ending_lines[0] = "Eu lhe perdoo! B)";
ending_lines[1] = "Mas que isso nunca mais se repita!";

//Adicionar os arrays ao map
ds_map_add(fight_lines, "Chupar cana", chuparCana_lines);
ds_map_add(fight_lines, "Assobiar", assobiar_lines);
ds_map_add(fight_lines, "Sonim", sonim_lines);
ds_map_add(fight_lines, "Olhar feio", olharFeio_lines);

ds_map_add(fight_lines, "Pacoquita", pacoquita_lines);
ds_map_add(fight_lines, "Goiaba", goiaba_lines);
ds_map_add(fight_lines, "Cortador de unha", cortadorDeUnha_lines);

ds_map_add(fight_lines, "Elogiar", elogiar_lines);
ds_map_add(fight_lines, "Ofender", ofender_lines);

ds_map_add(fight_lines, "Ending", ending_lines);

//Atribuindo o damage_map (o tanto de dano que o personagem vai tomar pra cada item)
ds_map_add(damage_map, "Chupar cana", 0);
ds_map_add(damage_map, "Assobiar", 0);
ds_map_add(damage_map, "Sonim", 0);
ds_map_add(damage_map, "Olhar feio", 0);

ds_map_add(damage_map, "Pacoquita", 5);
ds_map_add(damage_map, "Goiaba", 5);
ds_map_add(damage_map, "Cortador de unha", 0);

ds_map_add(damage_map, "Elogiar", 0);
ds_map_add(damage_map, "Ofender", 0);


//teste following

record = 10;