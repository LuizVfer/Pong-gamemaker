switch(estado)
{
	//estado idle, dele parado 
	case "idle":
		muda_sprite(spr_canhao_idle)
		criei_bala = false
	
	
	break;
	
	case "on":
		//codigo de quando ele for ativado
		muda_sprite(spr_canhao_on);
		
		if(image_index >= 1.5 && criei_bala = false)
		{
			// eu vou criar a bola de canhao
			var _bola = instance_create_layer(x + (5 * image_xscale), y -11, "projeteis", obj_bola_canhao)
			_bola.velh = (7 + random_range(-3 ,3)) * image_xscale ;
			_bola.velv = -1
			
			criei_bala = true
		}
		
		if (image_index >= image_number -1)
		{
			estado = "espera"
		
		
		}
	break;
	
	case "espera":
	
		muda_sprite(spr_canhao_idle)
		timer_tiro--
		
		//se o time do tiro zerou, eu vou voltar pra idle e reseto
		if(timer_tiro <= 0)
		{
			timer_tiro = tempo_tiro
			estado = "idle"
		}
	
	break
}