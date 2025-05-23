//criando obj game control
// se nao existe um obj game control no jogo
if (!instance_exists(obj_game_control))
{
	instance_create_depth(0, 0, 0, obj_game_control);
}

global.transicao = false