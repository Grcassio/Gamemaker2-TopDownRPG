//width = 176; //tamanho da camera - 32 - 32 (de cada lado saca, esquerda e direita)
//height = 50;
width = camera_get_view_width(view_camera[0]) - 32 - 32 ;
height = camera_get_view_height(view_camera[0])/4 ;

op_border = 8; //distância da borda do texto
op_space = 16; //distância entre as opções

text[0] = "";

currentOption = 0;
page = 0;

//Referência pro objeto que criou essa textbox (o npc ou seja la o que for uma cena)
creator = noone;

//So pra empurrar a caixa
xBuffer = 20;
yBuffer = 5;

//Buffer pra dar espaço entre as opções
optionBuffer = 400;

charCount = 0;

//position in menu
pos = 0


auxLoop = 0;

