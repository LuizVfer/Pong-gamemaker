velv += grav

if (place_meeting(x, y + 1, obj_chao))
{
	if (velh != 0)
	{
		velh *= .93
	}
}
else
{
	velh *= .99
}

if (momento == "off")
{
	//codigo do off
	sprite_index = spr_bomba
}
else if (momento == "on")
{
	// codigo do on
	sprite_index = spr_bomba_on
	//rodando o boom timer
	if(boom_timer > 0)
	{
		boom_timer--
	}
	else
	{
		//se o boom timer for 0 ou menos
		momento = "boom"
	}
}
else if (momento == "boom")
{
	// codigo do boom
	//checar se ele ja mudou de sprite
	if(sprite_index != spr_bomba_boom)
	{
		// ou seja, eu acabei de chegar nesse momento
		// muda de sprite
		sprite_index = spr_bomba_boom
		// começo a animaçao do 0
		image_index = 0
	}
	
	// se eu terminei a animaçao eu me destruo
	if (image_index >= image_number-1)
	{
		instance_destroy()
	}
	
	//checando se eu estou colidindo com o player
	
	var _player = instance_place(x, y, obj_player)
	if(_player)
	{
		with(_player)
		{
			dano = true;
			// Dando o valor do timer dano
			timer_dano = tempo_dano
			inv_timer  = inv_tempo
		}
	}
	
	var _bomba = instance_place(x, y, obj_bomba)
	if(_bomba)
	{
		if(_bomba.momento =="off")
		{
			_bomba.boom_timer = room_speed
			_bomba.momento = "on"
		}
    }
	
}
