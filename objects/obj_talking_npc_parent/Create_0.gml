/// @description Insert description here
// You can write your code in this editor
depth = -bbox_bottom;

myTextbox = noone;

canTalk = true;

collidedRight = false;
collidedLeft = false;
collidedUp = false;
collidedDown = false;
collided = false;

isFinished = false;


//Então essa parte aqui vai ser criada para que os npc's armazenem os possiveis dialogos 
//Para todas as opções de itens/ações/falas nas lutas, para isso eu utilizei uma data structure de maps
//Os maps são a mesma coisa que um dicionário do python
//Para isso eu vou associar o nome do campo onde vai ser armazenado o vetor de dialogos com o nome da ação utilizada
//Ou seja se o nome do campo for pacoquita o nome na string de texto de ações vai ser pacoquita tambem


fight_lines = ds_map_create();
damage_map = ds_map_create();

