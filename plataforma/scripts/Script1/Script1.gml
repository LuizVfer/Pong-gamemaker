function Script1(){

}
randomize();

global.transicao= false;
global.max_vida = 3;
global.vida = global.max_vida

//criando o  objeto control
instance_create_depth(0, 0, 0, obj_game_control)


function mudando_sprite(_sprite)
{
	image_speed = 1
	//checar se eu estou com a sprite certa
	if (sprite_index != _sprite)
	{
		sprite_index = _sprite
		image_index = 0
	}
}