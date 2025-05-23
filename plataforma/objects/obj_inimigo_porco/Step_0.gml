//checando se está no chao

if(morto) 
{
	sprite_index = spr_inimigo_porco_death  
	
	// sumindo se acabou a minha animaçao
	if (image_speed <=0)
	{
		image_alpha -= 0.01
	}
	// se eu suni totalmente eu me destruo
	if (image_alpha <= 0)
	{
		instance_destroy()
	}
	exit;
}

var _chao = place_meeting(x, y +1, obj_chao);

if(estado =="normal")
{
	//checando se eu colidi com uma bomba
	var _bomba = instance_place(x, y, obj_bomba)
	
	if(_bomba && _chao)
	{
		// se eu nao pegar a bomba, eu vou atiar ela	
		if(pega_bomba == false)
		{
			//checando se ela está apagada
			if(_bomba.momento == "off")
			{
				estado = "fosforo_on"
			}
		}
		else if(_bomba.momento == "off")
		{
			//Eu vou pegar a bomba entao mano!
			instance_destroy(_bomba);
			//Eu vou virar o porco pegando bomba
			var _novo_porco = instance_create_layer(x, y, layer, obj_inimigo_porco_bomba)
			_novo_porco.estado = "pega"
			instance_destroy()
		}
	}
	
	var _canhao = instance_place(x, y, obj_canhao)
	
	if (_canhao)
	{	
		if (_canhao.estado =="idle")
		{
			estado = "fosforo_on"
		}
	}
	
	if(_chao)
	{
		// Vou diminuir o tempo de decidir andar
		tempo_decidir_andar -= 1;
	
		//se o tempo acabou, eu decido se eu vou andar
		if(tempo_decidir_andar <=0)
		{
			andando = choose(true, false)
		
		
			//escolhendo a direçao se ele decidiu andar
			if(andando)
			{
				velh= choose(vel, -vel);
			}
			else
			{
				velh = 0;
			}
		
			//resetando o tempo
			tempo_decidir_andar = room_speed * 3;
		}
	

	
		//Controlando a animaçao do inimigo
		if (velh !=0 && dano == false)
		{
			sprite_index = spr_inimigo_porco_run
			image_xscale = sign(velh);
		}
		else
		{
			sprite_index = spr_inimigo_porco_idle
		}
		//se eu estiver caindo
		if (velv > 0)
		{
			sprite_index = spr_inimigo_porco_fall
		}
		else
		{
			sprite_index = spr_inimigo_porco_idle
		}
	
		// se eu bater na parede, eu mudo de direçao
		if (place_meeting(x + velh, y, obj_chao))
		{
			velh *= -1;
		}
			
		// se eu nao posso cair, entao quando eu for cair eu mudo de direçao
		if (pode_cair == false)
		{		
			if(place_meeting(x + (velh * 10), y + 1, obj_chao)==false)
			{	
				// se eu nao posso cair e nao estou tocando no chao na minha frente
				// entao eu mudo de direçao
				velh *= -1;
			}
		}		
	}
	else
	{
		velv += grav;
	
		//velh = 0;
	
		if (velh != 0)
		{
			image_xscale = sign(velh);
		}
	}
}
else if (estado == "fosforo_on")
{
	// mudando a sprite dele
	if (sprite_index != spr_porco_fosforo_on)
	{
		sprite_index = spr_porco_fosforo_on
		image_index = 0
	}
	velh = 0;
	
	// depois que ele acendeu o fosforo ele muda de estado
	if(image_index >= image_number - 1)
	{
		estado = "fosforo_bomba"
	}
}
else if (estado == "fosforo_bomba")
{
	if(sprite_index != spr_porco_fosforo_bomba)
	{
		sprite_index = spr_porco_fosforo_bomba
		image_index = 0
	}
	
	// terminou a animaçao
	if(image_index >= image_number - 1)
	{
		var _bomba = instance_place(x, y, obj_bomba)
		if(_bomba)
		{
			_bomba.momento = "on"
		}
		estado = "normal"
		
		var _canhao = instance_place(x, y, obj_canhao)
		if (_canhao)
		{
			_canhao.estado = "on"
			
			//deixando ele escolher se ele pega a bomba ou ativa a bomba
			pega_bomba = choose(true, false)
		}
		estado = "normal"
	}
}
//checando se eu estou tomando dano
if (dano && morto == false )
{
	sprite_index = spr_inimigo_porco_dano;
	velh = 0
}


